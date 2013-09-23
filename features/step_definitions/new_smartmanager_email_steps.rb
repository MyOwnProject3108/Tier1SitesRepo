Given(/^I click on the New and Shiny Smart Manager link on the smartmanager home page$/) do
  @current_page.new_smartmanager_link_element.click
end

When(/^I click on the "(.*?)" link on the newemail page$/) do |newcampaign|
  @current_page.new_campaign_element.click
end

Then(/^I enter email campaign name as "(.*?)"$/) do |campaignname|
  @current_page.campaignname = campaignname
end

Then(/^I click on the "(.*?)" on the newemailcreate page$/) do |advlink|
  @current_page.adv_link_submit_element.click
end

Then(/^I should see "(.*?)" text on the newemailcreate page$/) do |advmessage|
  @current_page.adv_message.should == advmessage
end

Then(/^I enter number of widgets as "(.*?)" on the emailconfiguration page$/) do |numwidgets|
  @current_page.numwidgets = numwidgets
end

When(/^I click on the "(.*?)" button on the emailconfiguration page$/) do |createemail1|
@current_page.create_email1_submit_element.click
 end
 
 
 Then(/^I click on the "(.*?)" class on the emailconfiguration page$/) do |strategyselect|
@current_page.strategy_select_element.click
end

 Then(/^I select stategy as "(.*?)" on the emailconfiguration page$/) do |emailstrategy|
  #@current_page.email_strategy_submit_element.click
 # @current_page.emailstrategy = emailstrategy
 #@current_page.list_items(:class => "visual-item BESTSELLER_BY_REVENUE_SMART_CATEGORY").click
 @current_page.list_element(:class => "visual-item BESTSELLER_BY_REVENUE_SMART_CATEGORY").click
end


#Then(/^I select background colour "(.*?)" on the newemailcreate page$/) do |colour|
#@current_page.background_colour_picker_element.click
#@current_page.div_element(:id=>"color_selector").div_element(:class =>"color_swatch", :index => index).click
#@current_page.div_element(:class => "colorpicker-saturation").click
 #end

#Then(/^I select title colour "(.*?)" on the newemailcreate page$/) do |arg1|
 # @current_page.title_colour_picker_element.click
#  @current_page.div_element(:class => "colorpicker-hue").when_visible.click
#  @current_page.div_element(:class => "colorpicker-saturation").click
#end
Then(/^I enter background colour "(.*?)" on the newemailcreate page$/) do |bgcolour|
#@current_page.text_field(:name => 'backgroundColour', :index => 0).send_keys("bgcolour") 
@current_page.bgcolour = bgcolour
#@browser.send_keys :enter
end


Then(/^I enter title colour "(.*?)" on the newemailcreate page$/) do |titlecolour|
#  @current_page.titlecolour = titlecolour
  @current_page.titlecolour = titlecolour
  @current_page.titlecolour_element.respond_to?(:send_keys) ? @current_page.titlecolour_element.send_keys(:enter) : @browser.send_keys('{ENTER}')
 # @browser.send_keys :enter
  #@browser.send_keys("{ENTER}")
 # @current_page.titlecolour_element.click
end

Then(/^I select title font on the newemailcreate page$/) do
   @current_page.select_list_element(:name => "title.Font").when_present.select "Verdana"
 # working @current_page.select_list_element(:name => "title.Font").option(:value => "Verdana").click
end

Then(/^I select title characteristics on the newemailcreate page$/) do
@current_page.select_list_element(:name => "title.characteristics").when_present.select "Italic"
 end
 
Then(/^I select font size on the newemailcreate page$/) do
@current_page.select_list_element(:name => "title.fontSize").when_present.select "14"
 end
 
 Then(/^I enter price colour "(.*?)" on the newemailcreate page$/) do |pricecolour|
  @current_page.pricecolour = pricecolour
end

Then(/^I select price font on the newemailcreate page$/) do
   @current_page.select_list_element(:name => "price.Font").when_present.select "Courier New"
end

Then(/^I select price characteristics on the newemailcreate page$/) do
  @current_page.select_list_element(:name => "price.characteristics").when_present.select "Bold Italic"
end

Then(/^I select price size on the newemailcreate page$/) do
  @current_page.select_list_element(:name => "price.fontSize").when_present.select "15"
 end

Then(/^I click the next button on the newemailcreate page$/) do
  @current_page.email_campaign_submit_element.click
end


#Then(/^I select title font as "(.*?)" on the newemailcreate page$/) do |abc|
#@current_page.select_list_element(:name => "title.Font").focus
          #   @current_page.select_list_element(:name => "title.Font").click
        #     @current_page.abc = abc
#@current_page.select_list_element(:name => "title.Font").option(:value => "Verdana").click
#@current_page.select_list_element.click
 # @current_page.select_list_element(:name => "title.Font").select 'Verdana'
 #@current_page.font1 = font1
#end

#Then(/^I select title characteristics as "(.*?)" on the newemailcreate page$/) do |char|
 # @current_page.select_list_element(:name => "title.characteristics").option(:value => "ITALIC").click
 #  @current_page.char = char
#end

#Then(/^I select font size as "(.*?)" on the newemailcreate page$/) do |size|
#  @current_page.select_list_element(:name => "title.fontSize").option(:value => "14").click
#end




#Then(/^I select title "(.*?)" as "(.*?)" on the newemailcreate page$/) do |title,style|
#	@current_page.select_list_element(:name => "title.Font").click
 #   @current_page.title = title
	#@current_page.style = style
#end

#Then(/^I select title on the newemailcreate page$/) do
 # @current_page.select_list_element(:name => "title.Font").click
  #@current_page.title_text("Verdana")
#end




























