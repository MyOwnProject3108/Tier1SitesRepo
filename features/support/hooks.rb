require 'watir-webdriver'

Before('~@smartapi') do
    @browser = Watir::Browser.new :firefox          
end

After('~@smartapi') do 
    @browser.close
end