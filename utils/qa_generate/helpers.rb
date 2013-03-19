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