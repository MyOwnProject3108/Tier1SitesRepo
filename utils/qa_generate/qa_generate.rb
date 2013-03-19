#!/usr/bin/env ruby

require 'erb'
require 'pp'
require 'psych'
require 'trollop'
require 'fileutils'
require_relative "rules.rb"
require_relative "helpers.rb"

QA_GENERATE_VERSION = "0.1.7"

# Specify commandline options
opts = Trollop::options do
  version "qa_generate #{QA_GENERATE_VERSION} (c) 2013 Peerius Ltd"
  banner <<-EOS
qa_generate is a test creation tool which takes YAML input (see: yaml.org) and
generates .feature and page class files in order to test Peerius code on client sites.

Usage:
       qa_generate [options]
       
where [options] are:
EOS
  opt :infile, "Sites filename/directory", :type => :string, :default => "sites"
  opt :templates, "Template directory", :type => :string, :default => "templates"
  opt :outfile, "Output directory", :type => :string, :default => "../../"
#  opt :example, "Output empty.yaml"
end

# Use an appropriate input directory if one is not supplied.
opts[:infile] = "sites" unless opts[:infile]

# Ensure input file exists 
Trollop::die :infile, "File: '#{opts[:infile]}' must exist" unless File.exist?(opts[:infile])
Trollop::die :infile, "File: '#{opts[:templates]}' must exist" unless File.exist?(opts[:templates])

input_file = opts[:infile]

if File.directory?(input_file)
   input_file += "/*.yaml"
end

# Ensure there is a trailing slash
template_directory = opts[:templates].dup
template_directory << '/' if template_directory[-1].chr != '/'

template_files = Dir[template_directory+"**/*"]
site_files = Dir[input_file]

# Start a new sitelist with the first site
sitelist_file_mode = "w"

site_files.each do |site_filename|
  # Load the site YAML file
  #site = YAML::load(File.open(site_filename, 'r:utf-8'))
  site = Psych.load_file(site_filename)
  
  # Create an appropriate output directory if one is not supplied.
  output_path = opts[:outfile].dup
  output_path = "../../" unless opts[:outfile]
  output_path << '/' if output_path[-1].chr != '/' 
  
  # Generate output files from templates
  template_files.each do |template_filename|
    if File.file?(template_filename)
      template_file = File.open(template_filename, "r") { |f| f.read }
      generator = ERB.new(template_file, 0, "<>")
      generator.filename = template_filename
      output_content = generator.result(binding)
      
      output_filename = output_path + template_filename.gsub(/#{template_directory}/,'').gsub(/site/, site["site_name"])
      if (output_content =~ /\A#ignore/) then
        puts "Skipping #{output_filename}. No tests to run." 
      else
        puts "Creating #{output_filename}..."
        FileUtils.mkpath File.dirname(output_filename)
        output_file = File.open(output_filename, "w")
        output_file << output_content
      end
      
    end    
  end
  
  # Generate sitelist
  output_filename = output_path + "features/support/auto_sites.txt"
  puts "Creating #{output_filename}..." unless sitelist_file_mode == "a" 
  FileUtils.mkpath File.dirname(output_filename)
   
  output_file = File.open(output_filename, sitelist_file_mode) do |sitelist|
    site_name = site["home_page"]["URL"]
    site_name.gsub!(/https?:\/\//,'')
    site_name.gsub!(/www\./,'')
    site_name.gsub!(/\/.*$/, '')
    sitelist.puts site["home_page"]["URL"] + "\n"
  end
  
  sitelist_file_mode = "a"   
end