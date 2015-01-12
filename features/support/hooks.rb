require 'watir-webdriver'
require 'tiny_tds'
require 'psych'
require_relative 'peerius/peerius_utils'
require 'headless' if ENV['HEADLESS'] == 'true'

if ENV['HEADLESS'] == 'true'
  headless = Headless.new
  headless.start
  plog("I AM HEADLESS... SO MIGHT NOT REALLY KNOW WHERE AM HEADED...","yellow")
end

CAPTURE_SCREENSHOT = false
if ENV['SCREENSHOTONFAILURE']
  CAPTURE_SCREENSHOT = true
  plog("I WILL CAPTURE A SCREENSHOT in /logs/screenshots/ FOLDER, IF YOUR TEST FAILS","yellow")
end

WEBDRIVER=true

web_proxy = ENV["proxy"]
web_proxy = FigNewton.proxy("") unless web_proxy

if ENV['WINHEADLESS'] 
  caps = Selenium::WebDriver::Remote::Capabilities.phantomjs
  caps["phantomjs.page.settings.userAgent"] = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:19.0) Gecko/20100101 Firefox/19.0"
  caps["phantomjs.cli.args"] = "--proxy=#{web_proxy} --webdriver-loglevel='DEBUG'" if web_proxy and web_proxy != ""          
  browser = Watir::Browser.new :phantomjs, :desired_capabilities => caps
  plog("I AM HEADLESS... SO MIGHT NOT REALLY KNOW WHERE AM HEADED...","yellow")
elsif ENV['chrome'] 
  proxy = "--proxy-server=#{web_proxy}" if web_proxy and web_proxy != ""
  #browser = Watir::Browser.new :chrome, :switches => [proxy]
  browser = Watir::Browser.new :chrome  
else
   profile = Selenium::WebDriver::Firefox::Profile.new
   #Selenium::WebDriver::Firefox.path = "C:\\Program Files (x86)\\Mozilla Firefox 19\\firefox.exe"
   profile.native_events = false
   caps = Selenium::WebDriver::Remote::Capabilities.firefox(:native_events => false)
   #driver = Selenium::WebDriver.for(:firefox, profile: profile, desired_capabilities: caps) #added by fayaz
#puts driver.capabilities[:native_events] #added by fayaz
   
   if FigNewton.base_url.include?("test") then
       profile['extensions.tracker.url'] = "//#{FigNewton.base_url}/tracker/peerius.page"
       profile['extensions.tracker.enabled'] = true
   else
       profile['extensions.tracker.url'] = "//#{FigNewton.base_url}/tracker/peerius.page"
       profile['extensions.tracker.enabled'] = false
   end

   profile['extensions.tracker.debugenabled'] = true
   
   if web_proxy and web_proxy != "" then
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
   
   #profile.add_extension "features/support/peerius-tfp@peerius.co.uk.xpi"
   browser = Watir::Browser.new :firefox, :profile => profile, :desired_capabilities => caps
   #Implicit wait for browser
   browser.driver.manage.timeouts.implicit_wait = 5
   browser.driver.manage.window.maximize
end

if FigNewton.username("") != "" then
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
end

Before do
  @browser = browser
	if FigNewton.username("") != "" then
    @db0 = db0
  	@db1 = db1
  	@db2 = db2
  	@db3 = db3
  	@db4 = db4
  	@db5 = db5
  	@db6 = db6
  	@db7 = db7
  end
  @sites = sites
  
end

After do |scenario|
  save_screenshot(scenario) if scenario.failed? && CAPTURE_SCREENSHOT == true
end

AfterStep('@web') do |scenario|
  @browser.cookies.add 'peerius_pass_peeriusdebug', '1'
end

at_exit do
    if ENV['HEADLESS'] == 'true' || ENV['WINHEADLESS'] == true
       headless.destroy
    else 
       browser.close unless ENV["keepbrowseropen"]
       if FigNewton.username("") != "" then
            db0.close
            db1.close
            db2.close
            db3.close
            db4.close
            db5.close
            db6.close
            db7.close
      end
    end
    plog("==== Test COMPLETED at #{Time.new.inspect} ====", "grey")
end
plog("==== Test INITIATED at #{Time.new.inspect} ====", "grey")

#Before do
#profile.add_extension "features/support/peerius-tfp@peerius.co.uk.xpi"
#driver = Watir::Browser.new :firefox, :profile => profile
#driver = Selenium::WebDriver::Firefox
#end

