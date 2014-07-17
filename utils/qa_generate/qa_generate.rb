#!/usr/bin/env ruby

require 'erb'
require 'pp'
require 'psych'
require 'trollop'
require 'fileutils'
require_relative "rules.rb"
require_relative "helpers.rb"

QA_GENERATE_VERSION = "2.0.20140717"


# Specify commandline options
opts = Trollop::options do
	version "qa_generate #{QA_GENERATE_VERSION} (c) 2014 Peerius Ltd"
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
end

# Use an appropriate input directory if one is not supplied.
opts[:infile] = "sites" unless opts[:infile]

# first argument needs to be <siteName> to run qa_generate for a single site
siteName = ARGV[0] ? ARGV[0] : "" 

# Start a new sitelist and dbmapping with the first site
sitelist_file_mode = "w"
dbmapping_file_mode = "w"

cur_path = File.expand_path(".",Dir.pwd)
sites_yaml_path = cur_path + "/sites"
templates_path = cur_path + "/templates/features/auto_generate"
utils_path = File.expand_path("..",Dir.pwd) 
output_path = File.expand_path("../..",Dir.pwd)


#if(siteName == "")
	# Generate sitelist
	autosites_filename = output_path + "/features/support/auto_sites.txt"
	plog("Creating #{autosites_filename}...","grey") unless sitelist_file_mode == "a" if(siteName == "")
	FileUtils.mkpath File.dirname(autosites_filename)

	# Generate dbmapping
	dbmapping_filename = output_path + "/features/support/auto_dbmapping.yaml"
	plog("Creating #{dbmapping_filename}...","grey") unless dbmapping_file_mode == "a" if(siteName == "")
	FileUtils.mkpath File.dirname(dbmapping_filename)
#end

site_name = "<siteName>"
site_name = siteName if siteName != "" 
num_sites = 0

plog("## Templates, Features, Scenarios, Step Definitions - Auto-generated by QA Generator v#{QA_GENERATE_VERSION} ##","grey")

if(siteName == "" )
	plog("CONFIG => ","grey")
	plog("\tSite config yaml files are in #{sites_yaml_path}/","grey")
	plog("\tFeature templates are in #{templates_path}/","grey")
	plog("\tStep definition templates are in #{output_path}/features/step_definitions","grey")
	plog("\tSupport modules for each page type are in #{templates_path}/support/pages/","grey")
	plog("OUTPUT => ","grey")
	plog("\tFeature files for each site will be generated in #{output_path}/features","grey")
	plog("\tPage step definition code will be generated in #{output_path}/features/support/pages/","grey")
else
	plog("#{siteName.upcase} CONFIG => ","grey")
	plog("\tSite config file\t   : #{sites_yaml_path}/#{site_name}.yaml","grey")
	plog("#{siteName.upcase} OUTPUT => ","grey")
	#plog("\tFeature file \t\t:: #{output_path}/features/auto_#{site_name}_integration.feature","grey")
	#plog("\tSupport modules \t:: #{output_path}/support/pages/site/","grey")
end

if(siteName == "" )
	plog("GENERATE => ","grey") 
else 
	#plog("#{siteName.upcase} => \t\t :: Creating feature files, scenarios and step definition code ...","grey")
end

def generateFiles(site, siteName, opts, output_path, allSites)

	# Ensure there is a trailing slash
	template_directory = opts[:templates].dup
	template_directory << '/' if template_directory[-1].chr != '/'

	template_files = Dir[template_directory+"**/*"]

	# Generate output files from templates for site
	plog("\t#{siteName.upcase} \t :: Created feature files, scenarios and step definition code","grey") if allSites
	files = Array.new
	template_files.each do |template_filename|
		if File.file?(template_filename)
			template_file = File.open(template_filename, "r") { |f| f.read }
			generator = ERB.new(template_file, 0, "<>")
			generator.filename = template_filename
			output_content = generator.result(binding)
			output_filename = output_path + "/" + template_filename.gsub(/#{template_directory}/,'').gsub(/site/, site["site_name"])
			if (output_content =~ /\A#ignore/) then
				# puts "Skipping #{output_filename}. No tests to run." 
			else
				# puts "Creating #{output_filename}..."
				FileUtils.mkpath File.dirname(output_filename)
				output_file = File.open(output_filename, "w")
				output_file << output_content
				filename = template_filename.split("/")[-1].gsub(/site/, site["site_name"])
				if output_filename.include?(".feature")
					plog("\tCreated feature file\t   : #{output_filename}","grey") unless allSites
				else
					files << filename
				end
				
			end
		end 
	end
	plog("\tCreated support modules in : #{output_path}/support/pages/","grey") unless allSites
	if !allSites && files.length > 4
		plog("\t\t\t\t   : #{files[0..3].join(", ")}","grey") 
	    plog("\t\t\t\t   : #{files[4..-1].join(", ")}","grey") 
	else
		plog("\t\t\t\t   : #{files.join(", ")}","grey") if !allSites 
	end
	return true
end

if(siteName!="") 
	siteFile = Psych.load_file("sites/#{siteName}.yaml")
	# Generate output files from templates for site
	generateFiles(siteFile,siteName,opts,output_path,allSites=false)
	plog("## Auto-generation completed for #{site_name.upcase} ##","grey")
else
		
	# Ensure input file exists 
	Trollop::die :infile, "File: '#{opts[:infile]}' must exist" unless File.exist?(opts[:infile])
	Trollop::die :infile, "File: '#{opts[:templates]}' must exist" unless File.exist?(opts[:templates])

	input_file = opts[:infile]
    input_file += "/*.yaml" if File.directory?(input_file)
	
	# output_path = opts[:outfile].dup
	# output_path = "../../" unless opts[:outfile]
	# output_path << '/' if output_path[-1].chr != '/'
	# output_path = File.dirname(__FILE__)

	site_files = Dir[input_file]
	num_sites = site_files.length
	site_files.each do |site_filename|
		# Load the site YAML file
		#site = YAML::load(File.open(site_filename, 'r:utf-8'))
		siteFile = Psych.load_file(site_filename)

		# Generate output files from templates
		# puts "#{site_filename.partition('/').last.upcase}: Generating features from #{sites_yaml_path + site_filename.partition('/').last} \n \t\t\t using templates in #{cur_path}templates/features"
		siteName = site_filename.partition('/').last.partition('.').first
		generateFiles(siteFile,siteName,opts,output_path,allSites=true)

		File.open(autosites_filename, sitelist_file_mode) do |asfile|
			site_name = siteFile["home_page"]["URL"]
			site_name.gsub!(/https?:\/\//,'')
			site_name.gsub!(/www\./,'')
			site_name.gsub!(/\/.*$/, '')
			asfile.puts siteFile["home_page"]["URL"] + "\n"
		end
		sitelist_file_mode = "a"
		File.open(dbmapping_filename, dbmapping_file_mode) do |dbmfile|
			dbmfile.puts "#{siteFile["site_name"]}:\n"
			dbmfile.puts "  db: #{siteFile["database_num"]}" unless siteFile["database_num"].nil?
			dbmfile.puts "  site_id: #{siteFile["site_id"]}" unless siteFile["site_id"].nil?
		end
		dbmapping_file_mode = "a"
	
	end
	plog("<<<< QA_GENERATE DONE FOR #{num_sites} SITES >>>>","grey")
end



