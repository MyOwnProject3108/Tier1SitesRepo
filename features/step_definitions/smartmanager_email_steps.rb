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

When(/^I uncheck the top\-ups checkbox$/) do
 @current_page.topups_submit_element.click
end

Then(/^I should read the algorithm,hint and expression on the emaildebug page$/) do
  @browser.window(:title => "Peerius").use do
 pp @browser.table.tr(:index => 8).text
 pp @browser.table.tr(:index => 9).text
  pp @browser.table.tr(:index => 11).text
  @browser.window(:title => "Peerius").close
  end
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

When /^I click on the trigger test email link on the emailcreate page$/ do
  @current_page.test_email_link_element.click
end

When /^I click on the preview email link on the emailcreate page$/ do
  @current_page.preview_email_link_element.click
end

When(/^I click on the debug information link on the emailcreate page$/) do
@current_page.email_debuginfo_link_element.click
end

Then(/^I should see "(.*?)" on the emaildebug page$/) do |expected_result|
  @browser.window(:title => "Peerius").use do
  puts (@browser.text.include? expected_result).should == true
 # working pp @browser.elements(:text => expected_result).size
 pp @browser.table.tr(:index => 8).text
 pp @browser.table.tr(:index => 9).text
# working pp @browser.td(:text => expected_result)
 
	@browser.window(:title => "Peerius").close
end
end

Then(/^I should see "(.*?)" message on the emailcreate page$/) do |emailtrigger|
  @current_page.text.include? 'emailtrigger'
end


Then(/^I should see either "(.*?)" on the emaildebug page$/) do |algorithm|
  @browser.window(:title => "Peerius").use do
   puts @browser.text.include?("NewProduct") || @browser.text.include?("Catalog")
 pp @browser.table.tr(:index => 8).text
 pp @browser.table.tr(:index => 9).text
end
end


$rs1 = Array.new
$rs2 = Array.new
#$rs1.push("test")
#puts "rs1 before ="+ $rs1

Then(/^I read and compare the first two refcodes in the emaildebug page$/) do
  @browser.window(:title => "Peerius").use do
 str1 = @browser.table.th(:index => 2).text ###working
 str2 = @browser.table.th(:index => 11).text
 $rs1.push(str1.split(":")[1])
 $rs2.push(str2.split(":")[1])#[1]
 puts "rs1 ="+ $rs1.to_s
 puts "rs2="+ $rs2.to_s
 puts $rs1[0].eql?($rs1[1])
 @browser.window(:title => "Peerius").close
 end
end

When(/^I select the hint as "(.*?)" on the emailcreate page$/) do |hint|
  @current_page.hint = hint
end

When(/^I click on the expression on the emailcreate page$/) do
  @current_page.expression_submit_element.click
end

When(/^I click on the add expression link on the emailcreate page$/) do
  @current_page.add_expression_link_element.click
end

When(/^I click on the "(.*?)" link on the emailcreate page$/) do |attribute|
  @current_page.attribute_submit_element.click
end

When(/^I hover over on the Attributes link on the emailcreate page$/) do
  @current_page.link_element(:href => '#attrs').hover
end

Then(/^I should see "(.*?)" error message on the emailcreate page$/) do |emailerrormessage|
@current_page.text.include? 'emailerrormessage'
end

Then(/^I should read the algorithm in the emaildebug page$/) do
  @browser.window(:title => "Peerius").use do
  pp @browser.table.tr(:index => 8).text
 pp @browser.table.tr(:index => 9).text
  @browser.window(:title => "Peerius").close
 end
end


When(/^I select the Attributes as "(.*?)" on the emailcreate page$/) do |attrselect|
  @current_page.attrselect_link_element.click
end


When(/^I enter attribute as "(.*?)" on the emailcreate page$/) do |attr|
 @current_page.attr = attr
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

When /^I click on the first delete link on the email page$/ do
  #(@current_page.delete_email_link_element).first.click
  @current_page.image_elements(:src => "/tracker/css/images/delete.png").first.click
end

When /^I confirm the delete email widget on the email page$/ do
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


