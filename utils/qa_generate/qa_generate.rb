require 'erb'
require 'pp'

template_files = Dir["templates/*"].each do |file_name|
    pp file_name.gsub(/site/, "mysite")
end 