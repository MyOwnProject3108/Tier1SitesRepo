Then /^I enter email name as "(.+)"$/ do |emailwidget|
@current_page.emailwidget = emailwidget
end

Then /^I enter email content width as (\d+) and height as (\d+)$/ do |width, height|
  @current_page.width = width
  @current_page.height = height
end

Then /^I select title color "(.+)"$/ do |color|
  @current_page.title_color_picker_element.click
  
  case color
  when "yellow" then index = 24
  when "red" then index = 14
  when "green" then index = 9
  when "blue" then index = 11
  else 
    puts "Unknown color: #{color}"
	index = 0
  end
  
  @current_page.div_element(:id=>"color_selector").div_element(:class =>"color_swatch", :index => index).click

end

Then /^I select price color "(.+)"$/ do |color|
  @current_page.price_color_picker_element.click
  
  case color
  when "yellow" then index = 24
  when "red" then index = 14
  when "green" then index = 9
  when "blue" then index = 11
  else 
    puts "Unknown color: #{color}"
	index = 0
  end
  
  @current_page.div_element(:id=>"color_selector").div_element(:class =>"color_swatch", :index => index).click
end

Then /^I select background color "(.+)"$/ do |color|
   @current_page.background_color_picker_element.click
  
  case color
  when "yellow" then index = 24
  when "red" then index = 14
  when "green" then index = 9
  when "blue" then index = 11
  else 
    puts "Unknown color: #{color}"
	index = 0
  end
  
  @current_page.div_element(:id=>"color_selector").div_element(:class =>"color_swatch", :index => index).click
end

When /^I drag "(.+)" rule to the position (\d+) slot$/ do |algorithm, position|
  # index = position.to_i - 1
  # rule = @browser.span(:text => algorithm)
  # slot = @browser.div(:id => index.to_s)
  # @browser.driver.action.drag_and_drop(rule.wd, slot.wd).perform
  # @browser.driver.action.drag_and_drop(rule, slot).perform
  # rule.fire_event("onmousedown")
  # driver = @browser.driver
  # driver.action.click_and_hold(rule.wd).perform

  # sleep 2
  # driver.action.move_to(slot.wd).perform

  # sleep 2
  # rule.fire_event("onmouseup")
  @browser.span(:text=>"algorithm").wd.drag_and_drop_on(@browser.div(:id=>"0").wd)
 # rule.drag_and_drop_on(slot)
  
#@browser.span(:text => algorithm).drag_and_drop_by 100, -200
 #   def drag_and_drop_by(right_by, down_by)
  #    assert_exists
   #   assert_has_input_devices_for :drag_and_drop_by
#
 #     @browser.action.
  #           drag_and_drop_by(@element, right_by, down_by).
   #          perform
    #end
end

When /^I enter email as "(.+)"$/ do |email|
  @current_page.email = email
end

When /^I click on the trigger test email link$/ do
  @current_page.test_email_link_element.click
end

When /^I click on the preview test email link$/ do
  @current_page.preview_email_link_element.click
end

  
Then /^I should see Our Recommendations link on the mailinator page$/ do
 on_page(Smartmanager::MailinatorPage).recs_link_element.exists?
end

When /^I click on the save button on the emailcreate page$/ do
  @current_page.save_email_submit_element.click
end

When /^I click on the delete link on the email page$/ do
  @current_page.delete_email_link_element.click
end

When /^I confirm the delete email widget$/ do
  @current_page.confirm_delete_email_element.click
end


When /^I open Our Recommendations email on the mailinator page$/ do
on_page(Smartmanager::MailinatorPage).recs_link_element.click
	#on_page(Smartmanager::MailinatorPage).wait_until_visible do
	#on_page(Smartmanager::MailinatorPage).text.include? "This is the sample email with Peerius Recommendations."
#end
end

When /^copy position (\d+) configuration to position (\d+)$/ do |positionx, positiony|
  slots = [1, 2]
	slots.each do |x|
	@current_page.copy_configuration_link_element.click
 end
end


#####
Given(/^I am on smart manager homepage$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I select "(.*?)" from the dropdown$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I click on Emailwidget link for<algorithm>$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I click on debug link$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I land on debug info page$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I click on Email Link$/) do
  pending # express the regexp above with the code you wish you had
end
###