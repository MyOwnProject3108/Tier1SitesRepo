require 'erb'
require 'pp'
require 'psych'
require 'trollop'
require 'fileutils'

QA_GENERATE_VERSION = "0.1.4"

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
  opt :infile, "Input filename", :type => :string, :default => "sites"
  opt :outfile, "Output directory", :type => :string, :default => "../../"
#  opt :example, "Output empty.yaml"
end

# Use an appropriate input directory if one is not supplied.
opts[:infile] = "sites" unless opts[:infile]

# Ensure input file exists 
Trollop::die :infile, "File: '#{opts[:infile]}' must exist" unless File.exist?(opts[:infile])

input_file = opts[:infile]

if File.directory?(input_file)
   input_file += "/*.yaml"
end

template_files = Dir["templates/**/*"]
site_files = Dir[input_file]

# Start a new sitelist with the first site
sitelist_file_mode = "w"

site_files.each do |site_filename|
  # Load the site YAML file
  #site = YAML::load(File.open(site_filename, 'r:utf-8'))
  site = Psych.load_file(site_filename)
  
  # Create an appropriate output directory if one is not supplied.
  output_path = opts[:outfile]
  output_path = "../../" unless opts[:outfile]
  
  # Generate output files from templates
  template_files.each do |template_filename|
    if File.file?(template_filename)
      output_filename = output_path + template_filename.gsub(/templates\//,'').gsub(/site/, site["site_name"])
      FileUtils.mkpath File.dirname(output_filename)
      puts "Creating #{output_filename}..."  
      output_file = File.open(output_filename, "w")
      template_file = File.open(template_filename, "r") { |f| f.read }
      generator = ERB.new(template_file, 0, "<>")
      generator.filename = template_filename
      output_file << generator.result(binding)
    end    
  end
  
  # Generate sitelist
  output_filename = output_path + "features/support/auto_sites.txt"
  puts "Creating #{output_filename}..." unless sitelist_file_mode == "a" 
  FileUtils.mkpath File.dirname(output_filename)
   
  output_file = File.open(output_filename, sitelist_file_mode) do |sitelist|
    site_name = site["home_page"]["URL"]
    site_name.gsub!(/https?:/,'')
    site_name.gsub!(/www\./,'')
    site_name.gsub!(/\//, '')
    sitelist.puts site["home_page"]["URL"] + "\n"
  end
  
  sitelist_file_mode = "a"   
end