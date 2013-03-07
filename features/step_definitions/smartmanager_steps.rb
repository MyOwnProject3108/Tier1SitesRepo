Then /^I should see an "(.+)" message$/ do |message|
  @current_page.error_message.should == message
end

#When /^I click reporting$/ do
# @current_page.reporting_submit_element.click
#end


When /^I click "(.+)"$/ do |product|
  @current_page.product_submit_element.click
end

Given /^I click on logout$/ do
  @current_page.logout_element.click
end
