#if FigNewton.headless == "true" then
#    require "celerity"
#    browser = Celerity::Browser.new
#else
   require 'watir-webdriver'
   profile = Selenium::WebDriver::Firefox::Profile.new
   
   if FigNewton.base_url.include?("test") then
       profile['extensions.tracker.url'] = "//#{FigNewton.base_url}/tracker/peerius.page"
       profile['extensions.tracker.enabled'] = true
   else
       profile['extensions.tracker.url'] = "//#{FigNewton.base_url}/tracker/peerius.page"
       profile['extensions.tracker.enabled'] = false
   end
   
   profile['extensions.tracker.debugenabled'] = true 
   profile['extensions.tracker.sites'] = "demo.peerius.com.NEXT.ctshirts.co.uk.NEXT.lovehoney.co.uk.NEXT.wallis.co.uk.NEXT.cottontraders.co.uk"
   profile.add_extension "features/support/peerius-tfp@peerius.co.uk.xpi"
   browser = Watir::Browser.new :firefox, :profile => profile
#end

Before('~@smartapi') do
    @browser = browser
end

at_exit do
    browser.close
end
