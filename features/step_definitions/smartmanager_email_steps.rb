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

#When /^I drag and drop "(.+)" rule to the position (\d+) slot$/ do |algorithm, position|
#  index = position.to_i - 1
 # rule = @browser.span(:text => algorithm)
  #slot = @browser.div(:id => index.to_s)
  
#@browser.span(:class => "draggable ui-draggable").drag_and_drop_on(@browser.div(:class => "droparea ui-droppable ui-sortable"))
  
 # @browser.driver.action.drag_and_drop(rule.wd, slot.wd).perform
 # @browser.driver.action.drag_and_drop(rule, slot).perform
 # rule.fire_event("onmousedown")
  #driver = @browser.driver
  #driver.action.click_and_hold(rule.wd).perform

  #sleep 2
  #driver.action.move_to(slot.wd).perform

  #sleep 2
  #rule.fire_event("onmouseup")
####  @browser.span(:text=>"algorithm").wd.drag_and_drop_on(@browser.div(:id=>"0").wd)


  #rule.drag_and_drop_on(slot)
  
#@browser.span(:text => algorithm).drag_and_drop_by 100, -200
 #   def drag_and_drop_by(right_by, down_by)
  #    assert_exists
   #   assert_has_input_devices_for :drag_and_drop_by
#
 #     @browser.action.
  #           drag_and_drop_by(@element, right_by, down_by).
   #          perform
    #end
#end

#When(/^I drag and drop Abandoned Basket rule to the position slot on the emailcreate page$/) do
#  @browser.span(:class => "draggable ui-draggable").drag_and_drop_on(@browser.div(:class => "droparea ui-droppable ui-sortable"))
  #button_1 = @browser.span(:class => "draggable ui-draggable")
  #button_2 = @browser.div(:class => "droparea ui-droppable ui-sortable")
 # target = @browser.div(:id=>"0")

  #my_element.fire_event("onmousedown")

  #driver=browser.driver
  #@browser.click_and_hold(my_element.wd).perform

  #sleep 2
  #@browser.move_to(target.wd).perform

  #sleep 2
  #target.fire_event("onmouseup")
  #@browser.span(:class => "draggable ui-draggable").wd.drag_and_drop_on(@browser.div(:class => "droparea ui-droppable ui-sortable").wd)
#  @browser.driver.action.click_and_hold(button_1.wd).move_to(button_2.wd).release.perform
  #action = @browser.driver.action
#  action.key_down(:control)
 #a = @browser.span(:class => "draggable ui-draggable")
 #b = @browser.div(:class => "droparea ui-droppable ui-sortable")
#pp @browser.find_element(:class => "draggable ui-draggable")
#  a = @browser.span(:class => "draggable ui-draggable").wd
 #b = @browser.div(:class => "droparea ui-droppable ui-sortable").wd
 #####working#####
# a = @browser.span(:text => "Abandoned Basket")
 #sleep 10
 #b = @browser.div(:class => "droparea ui-droppable ui-sortable")
 #sleep 10
#@browser.driver.action.drag_and_drop(a,b).perform
#a.drag_and_drop_on b
#	def drag_and_drop_on(other)
 #     assert_exists
  #    driver.action.drag_and_drop(@element, other.wd).perform
   # end
   When(/^I drag and drop "(.*?)" rule to the position slot on the emailcreate page$/) do |algorithm|
#	algorithm = ['Abandoned Basket','Product Catalog','Wishlist highly viewed']
	#email_strategy.each do |y|
#	my_element = @browser.span(:text => 'email_strategy')
my_element = @browser.span(:text => "Abandoned Basket")
#my_element = @browser.span(:text => algorithm)
 
	target = @browser.div(:class => "droparea ui-droppable ui-sortable")
#target = @browser.div(:id => "0")
	my_element.fire_event("onmousedown")
	@browser.driver.action.click_and_hold(my_element.wd).perform
	sleep 10
#@browser.driver.action.move_to(target.wd).move_by(10, 10).click.perform
	@browser.driver.action.move_to(target.wd).click.perform
	sleep 5
##@browser.driver.action.release.perform
	#if y=="Abandoned Basket"
		my_element.fire_event("onmouseup")
	#end
	# @browser.driver.action.key_up(:control)
 #action.perform
# a.drag_and_drop_on(b)
 #@browser.action.drag_and_drop(a, b).perform
 #end
 end

 When(/^I drag and drop Best Sellers by Conversion \(last (\d+) days\) rule to the position slot on the emailcreate page$/) do |bestseller|
  my_element1 = @browser.span(:text => "Best Sellers by Conversion (last 90 days)")
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

When(/^the debug info should show the "(.*?)" on the emaildebug page$/) do |expectedstrategy|
 
 #on_page(Smartmanager::EmaildebugPage).expected_strategy_element.exists?
#on_page(Smartmanager::EmaildebugPage).expectedstrategy.eql?(expectedstrategy).should == true 
#on_page(Smartmanager::EmaildebugPage).expectedstrategy1.eql?(expectedstrategy1).should == true 
	x = @expectedstrategy
	#if @expectedstrategy['color'] == "red"
	#@expectedstrategy
	if(x == expectedstrategy)
	puts expectedstrategy
	else if(x == 'Product Catalog')
	puts expectedstrategy
	if
	puts false
#	if(x='Product Catalog' || 'Best Sellers by Conversion (last 90 days)')
#	puts true
#	else
#	puts false
	end
end
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


