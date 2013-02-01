require 'erb'
require 'pp'
require 'yaml'
YAML::ENGINE.yamler = 'syck'
require 'trollop'
require 'fileutils'

QA_GENERATE_VERSION = "0.1"

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
  opt :infile, "Input filename", :type => :string
  opt :outfile, "Output directory", :type => :string
#  opt :example, "Output empty.yaml"
end

# Ensure input file exists
Trollop::die :infile, "must exist" unless opts[:infile] 
Trollop::die :infile, "File: '#{opts[:infile]}' must exist" unless File.exist?(opts[:infile])

input_file = opts[:infile]

if File.directory?(input_file)
   input_file += "/*.yaml"
end

template_files = Dir["templates/**/*"]
site_files = Dir[input_file]

site_files.each do |site_filename|
  # Load the site YAML file
  site = YAML::load(File.open(site_filename, 'r:utf-8'))
  
  # Create an appropriate output directory if one is not supplied.
  output_path = opts[:outfile]
  output_path = "output/" unless opts[:outfile]
  
  template_files.each do |template_filename|
    if File.file?(template_filename)
      output_filename = output_path + template_filename.gsub(/templates\//,'').gsub(/site/, site["site_name"])
      FileUtils.mkpath File.dirname(output_filename)    
      output_file = File.open(output_filename, "w")
      template_file = File.open(template_filename, "r") { |f| f.read }
      generator = ERB.new(template_file)
      generator.filename = template_filename
      output_file << generator.result(binding)
    end    
  end
end