require 'watir-webdriver'

profile = Selenium::WebDriver::Firefox::Profile.new
profile['extensions.tracker.url'] = "//test1.lan/tracker/peerius.page"
profile['extensions.tracker.enabled'] = false 
profile['extensions.tracker.sites'] = "demo.peerius.com.NEXT.ctshirts.co.uk.NEXT.lovehoney.co.uk"
profile.add_extension "features/support/peerius-tfp@peerius.co.uk.xpi"
browser = Watir::Browser.new :firefox, :profile => profile

Before('~@smartapi') do
   @browser = browser
end

After('~@smartapi') do 
end

at_exit do
  browser.close
end