def debug_url(current_url)
  url_with_debug = current_url
  
  # Remove trailing slash from URL
  url_with_debug.gsub(/\/$/, '')
  
  if url_with_debug.include?("?") or url_with_debug.include?("&") 
    url_with_debug += "&peeriusdebug=1"
  else
    url_with_debug += "?peeriusdebug=1"
  end
  
  #pp url_with_debug
  #return url_with_debug
  return current_url
end

def plog(text, color)
	puts "\033[1;30m#{text}\033[0m" if color=="grey"
	puts "\033[1;31m#{text}\033[0m" if color=="red"
	puts "\033[1;32m#{text}\033[0m" if color=="green"
	puts "\033[1;33m#{text}\033[0m" if color=="yellow"
	puts "\033[1;35m#{text}\033[0m" if color=="magenta"
	puts "\033[1;36m#{text}\033[0m" if color=="blue"
end

@site_alias_file = "sites/_sites_alias.txt" #if File.directory?("/sites/")
@site_alias_file = File.open(@site_alias_file) or die "Unable to open sites alias file..."
@sites_alias_map = Hash.new
@site_alias_file.each_line do |line| 
	vals = line.split("=")
	@sites_alias_map[vals[1].gsub(/\n/,"")] = vals[0].gsub(/\n/,"") 
end
puts 1

def get_alias_for_site(site_name)
#site_names_map = Hash[@sites_alias_map.to_a.reverse]
return @sites_alias_map[site_name]
end