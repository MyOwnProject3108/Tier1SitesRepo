When /^I click the (.+) with (.+) "(.+)"$/ do | element, locator, locator_value |
  @browser.send(element.to_sym, locator.to_sym => locator_value).wd.location_once_scrolled_into_view  
  @browser.send(element.to_sym, locator.to_sym => locator_value).click
end

When /^I click optional (.+) with (.+) "(.+)"$/ do | element, locator, locator_value |
	begin
	  @browser.send(element.to_sym, locator.to_sym => locator_value).wd.location_once_scrolled_into_view  
	  @browser.send(element.to_sym, locator.to_sym => locator_value).when_present(5).click
	rescue Watir::Exception::UnknownObjectException
	  plog("The optional #{element} element with #{locator} \"#{locator_value}\" was not found. Resuming the test...","grey")
 	end
end

When /^I enter "(.+)" in the (.+) with (.+) "(.+)"$/ do |value, element, locator, locator_value|
  @browser.send(element.to_sym, locator.to_sym => locator_value).wd.location_once_scrolled_into_view 
  @browser.send(element.to_sym, locator.to_sym => locator_value).set(value)
end

When /^I enter optional "(.+)" in the (.+) with (.+) "(.+)"$/ do |value, element, locator, locator_value|
  begin
    @browser.send(element.to_sym, locator.to_sym => locator_value).wd.location_once_scrolled_into_view 
    @browser.send(element.to_sym, locator.to_sym => locator_value).set(value)
  rescue Watir::Exception::UnknownObjectException
    plog("The optional #{element} element with #{locator} \"#{locator_value}\" was not found. Resuming the test...","grey")
  end
end

When /^I select "(.+)" on the (.+) with (.+) "(.+)"$/ do |value, element, locator, locator_value|
  @browser.send(element.to_sym, locator.to_sym => locator_value).wd.location_once_scrolled_into_view 
  @browser.send(element.to_sym, locator.to_sym => locator_value).select(value)
end

When /^I pause for (.+) seconds?$/ do |seconds|
  sleep seconds.to_i
end

When /^I capture a screenshot$/ do
  @browser.screenshot.save 'screenshot.png'
end

When /^I close the browser alert$/ do |seconds|
  @browser.alert.ok
end