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

#Then(/^I select stategy as "(.*?)"$/) do |emailstrategy|
# @browser.div(:class => "visual").ul.li(:text => "Best Seller By Revenue in Smart Category").click 
#@browser.div(:class => "visual").ul.li(:text => "#emailstrategy").click 
#div_element(:class => "visual").ul.li(:class => "visual-item BESTSELLER_BY_CONVERSION_SMART_CATEGORY").when_present.click
#@current_page.li_element.click
#end

Then(/^I select stategy as Best Seller By Revenue in Smart Category$/) do
 # @current_page.list_element(:class => "visual-item BESTSELLER_BY_REVENUE_SMART_CATEGORY", :index => 3).click
# @browser.div(:class,'item-list').ul.li(:index => 2)
 #  @current_page.div_element(:class => "visual").ul.li(:text => "Best Seller By Revenue in Smart Category").when_present.click
 @browser.div(:class => "visual").ul.li(:text => "Best Seller By Revenue in Smart Category").click
 end
 
Then(/^I should see "(.*?)" error message on the emailconfiguration page$/) do |itemsmessage|
  #@current_page.items_message.should == itemsmessage
# pp @browser.div(:id => "mail_results").ul.li(:text => "Number of Items must be provided.").text.include? "itemsmessage"
#  @current_page.div_element(:id => "mail_results").ul.li.text.include? "itemsmessage"
  @current_page.text.include? "itemsmessage"
end

Then(/^I click on the cancel button on the newemailcreate page$/) do
 @current_page.cancel_campaign_submit_element.click
end


Then(/^I click on the "(.*?)" tab on the emailconfiguration page$/) do |strategyexpression|
  @current_page.strategy_expression_link_element.click
end

When(/^I select the hint as "(.*?)" on the emailconfiguration page$/) do |emailhint|
 @browser.select_list(:class => "exp_left_hand").option(:value => "r.category").when_present.click
end

When(/^I select the expression as "(.*?)" on the emailconfiguration page$/) do |emailexp|
 @browser.select_list(:class => "exp_op operatoroptions").option(:value => "=").when_present.click
 end
 
Then(/^I enter Category as "(.*?)" on the emailconfiguration page$/) do |attrvalue|
  @current_page.attrvalue = attrvalue
#  @browser.send_keys("{ENTER}")
end

Then(/^I click on the Hints tab on the emailconfiguration page$/) do
  @current_page.hint_tab_link_element.click
end

#Then(/^I select hint as "(.*?)" on the emailconfiguration page$/) do |selectemailhint|
 #@current_page.select_list(:name => "hintsBySlot[0]").option(:value => "unique-category").when_present.click
#end

#Then(/^I enter stategy as "(.*?)" on the emailconfiguration page$/) do |emailstrategy|
 # @current_page.emailstrategy = emailstrategy
#end


# Then(/^I select stategy as "(.*?)" on the emailconfiguration page$/) do |emailstrategy|
 #@current_page.ul(:class => "visual-list context-menu hide").lis(:index => 3 )
 #@current_page.list_element(:class => "visual-list context-menu hide", :index => 3 ).click
  #@current_page.email_strategy_submit_element.click
 # @current_page.emailstrategy = emailstrategy
 #@current_page.list_items(:class => "visual-item BESTSELLER_BY_REVENUE_SMART_CATEGORY").click
 #@current_page.list_element(:class => "visual-item BESTSELLER_BY_REVENUE_SMART_CATEGORY").click
#end

#Then(/^I select strategy from the list with class "(.*?)"$/) do |emailstrategy1|
  #@current_page.emailstrategy1 = emailstrategy1
 # @browser.div(:class,'item-list').ul.li(:index => 2)
 # @current_page.lis(:class => "visual-item BESTSELLER_BY_REVENUE_SMART_CATEGORY").select "Best Seller By Revenue in Smart Category"
#end


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




























