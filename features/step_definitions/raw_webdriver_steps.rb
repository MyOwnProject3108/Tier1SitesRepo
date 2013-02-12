When /^I click on the (.+) with (.+) "(.+)"$/ do | element, locator, locator_value |  
  @browser.send(element.to_sym, locator.to_sym => locator_value).click
end