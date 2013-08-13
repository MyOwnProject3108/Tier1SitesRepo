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


 
 When(/^I drag and drop "(.*?)" rule to the position slot on the emailcreate page$/) do |algo|
    my_element1 = @browser.span(:text => algo)
  target1 = @browser.div(:class => "droparea ui-droppable ui-sortable")
  my_element1.fire_event("onmousedown")
	@browser.driver.action.click_and_hold(my_element1.wd).perform
	sleep 10
	@browser.driver.action.move_to(target1.wd).click.perform
	sleep 5
	my_element1.fire_event("onmouseup")
end


 When(/^I drag and drop Product Catalog rule to the position slot on the emailcreate page$/) do
  my_element1 = @browser.span(:text => "Product Catalog")
  target1 = @browser.div(:class => "droparea ui-droppable ui-sortable")
  my_element1.fire_event("onmousedown")
	@browser.driver.action.click_and_hold(my_element1.wd).perform
	sleep 10
	@browser.driver.action.move_to(target1.wd).click.perform
	sleep 5
	my_element1.fire_event("onmouseup")  
end
 
Then(/^I select no repeat recs as (\d+) on the emailcreate page$/) do |norepeatrecs|
 @current_page.select_list_element(:name => "daysNoRepeatRecs").select "1"
 #@current_page.norepeatrecs_submit_element.click
end

When /^I enter email as "(.+)"$/ do |email|
  @current_page.email = email
end

When /^I click on the trigger test email link$/ do
  @current_page.test_email_link_element.click
end

When /^I click on the preview email link on the emailcreate page$/ do
  @current_page.preview_email_link_element.click
end

When(/^I click on the debug information link on the emailcreate page$/) do
@current_page.email_debuginfo_link_element.click
end

Then(/^I should see "(.*?)" on the emaildebug page$/) do |expected_result|
#puts on_page(Smartmanager::EmaildebugPage).text.include?("expectedstrategy").should == false
#puts @browser.text.include? '$expectedstrategy'
	@browser.window(:title => "Peerius").use do
	#@browser.text.should == expected_result
#	@browser.table(:xpath => "//*[@id='peeriusDebug']/tbody/tr[9]/td").text
#result= @browser.text.include? expected_result
#puts result.size
puts (@browser.text.include? expected_result).should == true
 #   @browser.text.should == expected_result
 pp @browser.elements(:text => expected_result).size
 pp @browser.td(:text => expected_result)
 
	@browser.window(:title => "Peerius").close
end
end


Then(/^I should see either "(.*?)" on the emaildebug page$/) do |algorithm|
  @browser.window(:title => "Peerius").use do
#  fail unless 
#puts (@browser.text.include? ('Best Sellers by Revenue ( last 28 days)'|| 'Product Catalog')).should == true
#puts (@browser.text.include? ('Best Sellers by Revenue ( last 28 days)'|| @browser.text.include? 'Product Catalog')).should == true
puts @browser.text.should =~ /(Best Sellers by Revenue ( last 28 days)|Product Catalog)/
 # puts @browser.text.should == 'Best Sellers by Revenue ( last 28 days)' || @browser.text.should == 'Product Catalog'
   pp @browser.elements(:text => algorithm).size
 pp @browser.td(:text => algorithm)
 @browser.window(:title => "Peerius").close
end
end


When(/^I enter email as "(.+)" on the mailinator page$/) do |emailrecs|
  on_page(Smartmanager::MailinatorPage).emailrecs = emailrecs
end

When(/^I click on the Go button on the mailinator page$/) do
  on_page(Smartmanager::MailinatorPage).go_submit_element.click
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


When /^I open the first Our Recommendations email on the mailinatorinbox page$/ do
on_page(Smartmanager::MailinatorinboxPage).peeriusrecs_submit_element.click
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


