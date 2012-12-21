Then /^I should see the "(.+)" SMART\-content$/ do |content|
  pending # express the regexp above with the code you wish you had
end

Then /^I should see at least (\d+) items of SMART\-content$/ do |expected_items|
  @current_page.smartContent.count.should == expected_items.to_i
end

Then /^I should see no SMART\-content$/ do
  @current_page.smartContentEnabled?.should be_false 
end

When /^I click the first SMART\-content creative image$/ do
  @current_page.smartContentEnabled?.should be_true  
  imageCreative = @current_page.smartContent[0].link_element(:index => 0).when_visible.click
end