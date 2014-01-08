#!/usr/bin/env ruby

require 'erb'
require 'pp'
require 'psych'
require 'trollop'
require 'fileutils'
require_relative "rules.rb"
require_relative "helpers.rb"

QA_GENERATE_VERSION = "0.1.8"

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

# Start a new sitelist and dbmapping with the first site
sitelist_file_mode = "w"
dbmapping_file_mode = "w"

cur_path = File.dirname(__FILE__)
sites_yaml_path = cur_path + "/sites"
site_feature_path = File.expand_path("../..",Dir.pwd)
utils_path = File.expand_path("..",Dir.pwd) 

puts "CONFIG => "
puts "\tFeature templates are in #{cur_path}/templates/features/"
puts "\tSmart Product step definition templates are in #{site_feature_path}/features/step_definitions"
puts "\tTracking Step definition templates for each page type are in #{cur_path}/templates/features/support/pages/site"
puts "\tSite configuration (<sitename>.yaml) files are in #{sites_yaml_path}/"

puts "OUTPUT => "
puts "\tFeature files for each site will be generated in #{utils_path}/features/"
puts "\tPage step definition code will be generated in #{utils_path}/features/support/pages/<sitename>/"

puts "GENERATE => "
site_files.each do |site_filename|
  # Load the site YAML file
  #site = YAML::load(File.open(site_filename, 'r:utf-8'))
  site = Psych.load_file(site_filename)
  
  # Create an appropriate output directory if one is not supplied.
  output_path = opts[:outfile].dup
  output_path = "../../" unless opts[:outfile]
  output_path << '/' if output_path[-1].chr != '/' 
  
  # Generate sitelist
  autosites_filename = output_path + "features/support/auto_sites.txt"
  puts "Creating #{autosites_filename}..." unless sitelist_file_mode == "a" 
  FileUtils.mkpath File.dirname(autosites_filename)
  
  # Generate dbmapping
  dbmapping_filename = output_path + "features/support/auto_dbmapping.yaml"
  puts "Creating #{dbmapping_filename}..." unless dbmapping_file_mode == "a" 
  FileUtils.mkpath File.dirname(dbmapping_filename)
   
  # Generate output files from templates
  # puts "#{site_filename.partition('/').last.upcase}: Generating features from #{sites_yaml_path + site_filename.partition('/').last} \n \t\t\t using templates in #{cur_path}templates/features"
  puts "\t#{site_filename.partition('/').last.partition('.').first.upcase} \t :: Generating feature files, scenarios and step definition code"

  template_files.each do |template_filename|
    if File.file?(template_filename)
      template_file = File.open(template_filename, "r") { |f| f.read }
      generator = ERB.new(template_file, 0, "<>")
      generator.filename = template_filename
      output_content = generator.result(binding)
      
      output_filename = site_feature_path + "/" + template_filename.gsub(/#{template_directory}/,'').gsub(/site/, site["site_name"])
      if (output_content =~ /\A#ignore/) then
        # puts "Skipping #{output_filename}. No tests to run." 
      else
        # puts "Creating #{output_filename}..."
        FileUtils.mkpath File.dirname(output_filename)
        output_file = File.open(output_filename, "w")
        output_file << output_content
      end
       # puts output_filename
    end    
  end
  
  File.open(autosites_filename, sitelist_file_mode) do |asfile|
    site_name = site["home_page"]["URL"]
    site_name.gsub!(/https?:\/\//,'')
    site_name.gsub!(/www\./,'')
    site_name.gsub!(/\/.*$/, '')
    asfile.puts site["home_page"]["URL"] + "\n"
  end
  
  sitelist_file_mode = "a"
  File.open(dbmapping_filename, dbmapping_file_mode) do |dbmfile|
     dbmfile.puts "#{site["site_name"]}:\n"
     dbmfile.puts "  db: #{site["database_num"]}" unless site["database_num"].nil?
     dbmfile.puts "  site_id: #{site["site_id"]}" unless site["site_id"].nil?
  end
      
  dbmapping_file_mode = "a"
  

end

puts "========= ALL DONE ========"