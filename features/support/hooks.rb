require 'watir-webdriver'
require 'tiny_tds'
require 'psych'

WEBDRIVER=true

web_proxy = ENV["proxy"]
begin
web_proxy = FigNewton.proxy unless web_proxy
rescue NoMethodError
end

#pp web_proxy

if ENV["headless"] then
  caps = Selenium::WebDriver::Remote::Capabilities.phantomjs
  caps["phantomjs.page.settings.userAgent"] = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:19.0) Gecko/20100101 Firefox/19.0"
  caps["phantomjs.cli.args"] = "--proxy=#{web_proxy}" if web_proxy and web_proxy != ""          
  browser = Watir::Browser.new :phantomjs, :desired_capabilities => caps  
else
   profile = Selenium::WebDriver::Firefox::Profile.new
  # profile.native_events = true #Added by fayaz for tests#
   
   if FigNewton.base_url.include?("test") then
       profile['extensions.tracker.url'] = "//#{FigNewton.base_url}/tracker/peerius.page"
       profile['extensions.tracker.enabled'] = true
   else
       profile['extensions.tracker.url'] = "//#{FigNewton.base_url}/tracker/peerius.page"
       profile['extensions.tracker.enabled'] = false
   end
   
   profile['extensions.tracker.debugenabled'] = true
   
   if web_proxy then
     profile.proxy = Selenium::WebDriver::Proxy.new :http => web_proxy
   else
     profile['network.proxy.type'] = 0
   end
   
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

# Open all the databases
db0 = TinyTds::Client.new(:username => FigNewton.username, :password => FigNewton.password, :host => FigNewton.host, :database => FigNewton.database0)
db1 = TinyTds::Client.new(:username => FigNewton.username, :password => FigNewton.password, :host => FigNewton.host, :database => FigNewton.database1)
db2 = TinyTds::Client.new(:username => FigNewton.username, :password => FigNewton.password, :host => FigNewton.host, :database => FigNewton.database2)
db3 = TinyTds::Client.new(:username => FigNewton.username, :password => FigNewton.password, :host => FigNewton.host, :database => FigNewton.database3)
db4 = TinyTds::Client.new(:username => FigNewton.username, :password => FigNewton.password, :host => FigNewton.host, :database => FigNewton.database4)
db5 = TinyTds::Client.new(:username => FigNewton.username, :password => FigNewton.password, :host => FigNewton.host, :database => FigNewton.database5)
db6 = TinyTds::Client.new(:username => FigNewton.username, :password => FigNewton.password, :host => FigNewton.host, :database => FigNewton.database6)
db7 = TinyTds::Client.new(:username => FigNewton.username, :password => FigNewton.password, :host => FigNewton.host, :database => FigNewton.database7)

# Create db mapping 
sites = Psych.load_file("features/support/auto_dbmapping.yaml")
sites.each_value {|site|
  site["db"] = eval("db#{site["db"]}") unless site.nil? or site["db"].nil?
}

Before do
  @browser = browser
	@db0 = db0
	@db1 = db1
	@db2 = db2
	@db3 = db3
	@db4 = db4
	@db5 = db5
	@db6 = db6
	@db7 = db7
  @sites = sites
end

AfterStep('@web') do |scenario|
  @browser.cookies.add 'peerius_pass_peeriusdebug', '1'
end

at_exit do
    browser.close unless ENV["keepbrowseropen"]
    db0.close
    db1.close
    db2.close
    db3.close
    db4.close
    db5.close
    db6.close
    db7.close
end
