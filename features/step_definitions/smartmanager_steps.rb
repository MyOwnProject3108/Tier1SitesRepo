Then /^I should see an "(.+)" message$/ do |message|
  @current_page.error_message.should == message
end