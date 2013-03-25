require 'watir-webdriver'

WEBDRIVER=true

web_proxy = ENV["proxy"]
begin
web_proxy = FigNewton.proxy unless web_proxy
rescue NoMethodError
end

#pp web_proxy

if ENV["headless"] then
  if web_proxy then   
    caps = Selenium::WebDriver::Remote::Capabilities.phantomjs(
      "phantomjs.cli.args" => "--proxy="+web_proxy
    )
    browser = Watir::Browser.new :phantomjs, :desired_capabilities => caps
  else
    browser = Watir::Browser.new :phantomjs
  end  
else
   profile = Selenium::WebDriver::Firefox::Profile.new
   
   if FigNewton.base_url.include?("test") then
       profile['extensions.tracker.url'] = "//#{FigNewton.base_url}/tracker/peerius.page"
       profile['extensions.tracker.enabled'] = true
   else
       profile['extensions.tracker.url'] = "//#{FigNewton.base_url}/tracker/peerius.page"
       profile['extensions.tracker.enabled'] = false
   end
   
   profile['extensions.tracker.debugenabled'] = true
   profile['network.proxy.type'] = 0
   
   # Build a list of sites that the tracker plugin will track
   tracker_sites = ""
   File.readlines("features/support/auto_sites.txt").each do |line| 
     tracker_sites += ".NEXT." unless tracker_sites == ""
     tracker_sites += line.chomp    
   end
   File.readlines("features/support/sites.txt").each do |line| 
     tracker_sites += ".NEXT." unless tracker_sites == ""
     tracker_sites += line.chomp    
   end
   
   profile['extensions.tracker.sites'] = tracker_sites
   
   profile.add_extension "features/support/peerius-tfp@peerius.co.uk.xpi"
   browser = Watir::Browser.new :firefox, :profile => profile
end

Before do
    @browser = browser
end

at_exit do
    browser.close unless ENV["keepbrowseropen"]
end
