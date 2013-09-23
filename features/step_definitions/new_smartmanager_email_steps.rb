Given(/^I click on the New and Shiny Smart Manager link on the smartmanager home page$/) do
  @current_page.new_smartmanager_link_element.click
end

When(/^I click on the "(.*?)" link on the newemail page$/) do |newcampaign|
  @current_page.new_campaign_element.click
end

Then(/^I enter campaign name as "(.*?)"$/) do |campaignname|
  @current_page.campaignname = campaignname
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
  @current_page.select_list_element(:name => "title.Font").option(:value => "Verdana").click
end

Then(/^I select title characteristics on the newemailcreate page$/) do
  @current_page.select_list_element(:name => "title.characteristics").option(:value => "ITALIC").click
end
Then(/^I select font size on the newemailcreate page$/) do
 @current_page.select_list_element(:name => "title.fontSize").option(:value => "14").click
 end
 
 Then(/^I enter price colour "(.*?)" on the newemailcreate page$/) do |pricecolour|
  @current_page.pricecolour = pricecolour
end

Then(/^I select price font on the newemailcreate page$/) do
  @current_page.select_list_element(:name => "price.Font").option(:value => "Courier New").click
end

Then(/^I select price characteristics on the newemailcreate page$/) do
  @current_page.select_list_element(:name => "price.characteristics").option(:value => "BOLD_ITALIC").click
end

Then(/^I select price size on the newemailcreate page$/) do
 @current_page.select_list_element(:name => "price.fontSize").option(:value => "15").click
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




























