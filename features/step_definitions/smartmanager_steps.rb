Then /^I should see an "(.+)" message$/ do |message|
  @current_page.error_message.should == message
end

When /^I click reporting$/ do
 on_page(Smartmanager::HomePage).reporting_submit_element.click
end

When /^I click merchandising$/ do
 on_page(Smartmanager::HomePage).merchandising_submit_element.click
end

When /^I click email$/ do
  on_page(Smartmanager::HomePage).email_submit_element.click
end

When /^I click config$/ do
  on_page(Smartmanager::HomePage).config_submit_element.click
end

When /^I click landing$/ do
  on_page(Smartmanager::HomePage).landing_submit_element.click
end

When /^I click ranking$/ do
  on_page(Smartmanager::HomePage).ranking_submit_element.click
end

When /^I click content$/ do
  on_page(Smartmanager::HomePage).content_submit_element.click
end

When /^I click settings$/ do
on_page(Smartmanager::HomePage).settings_submit_element.click
end


Given /^I click on logout$/ do
  @current_page.logout_element.click
end
