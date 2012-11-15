Then /^I should see the "(.+)" SMART\-content$/ do |content|
  pending # express the regexp above with the code you wish you had
end

Then /^I should see at least (\d+) items of SMART\-content$/ do |arg1|
  @current_page.smartContentCount.should == 6
end

Then /^I should see no SMART\-content$/ do
  @current_page.smartContentDisabled.should == true 
end