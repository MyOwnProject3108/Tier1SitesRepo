When /^I click on the (.+) with (.+) "(.+)"$/ do | element, locator, locator_value |
  @browser.send(element.to_sym, locator.to_sym => locator_value).wd.location_once_scrolled_into_view  
  @browser.send(element.to_sym, locator.to_sym => locator_value).click
end

When /^I enter "(.+)" on the (.+) with (.+) "(.+)"$/ do |value, element, locator, locator_value|
  @browser.send(element.to_sym, locator.to_sym => locator_value).wd.location_once_scrolled_into_view 
  @browser.send(element.to_sym, locator.to_sym => locator_value).set(value)
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