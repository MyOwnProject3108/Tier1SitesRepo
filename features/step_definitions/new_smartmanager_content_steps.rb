#Given(/^I select "(.*?)" from the sites list on the orders page$/) do |sitesss|
 # @current_page.text_field(:class => "select2-input").ul.li.span(:class => "select2-match").click
#end

Given(/^I click on "(.*?)" link on the orders page$/) do |sitelink|
@current_page.site_link_submit_element.click
end

Given(/^I enter sitename as "(.*?)" on the orders page$/) do |sitename|
  @current_page.sitename = sitename
  auto_content = @browser.ul(:class,'select2-results').lis
  auto_content.each do |site|
	if site.text.downcase == "#{sitename}"
    site.click
	sleep 10
	end
  end
end

When(/^I click on the smartmanger content link$/) do
  @current_page.content_link_element.click
end

When(/^I click on the New Create link on the creativelisting page$/) do
  @current_page.new_create_link_element.click
end

When(/^I enter the creative name as "(.*?)" on the creativelisting page$/) do |creativename|
  @current_page.creativename = creativename
end

When(/^I enter image url as "(.*?)"$/) do |imageurl|
  @current_page.imageurl = imageurl
end

When(/^I enter link url as "(.*?)"$/) do |linkurl|
  @current_page.linkurl = linkurl
end

#When(/^I enter related categories as "(.*?)" on the creativelisting page$/) do |rcategory|
#	rcat = ['shirt','formal shirt']
#	rcat.each do |x|
#	@current_page.text_field_element(:class => "Click to Search for Categories")
#	end
#end

When(/^I click on related products text area with the text "(.*?)"$/) do |prodsearch|
  @current_page.prod_search_element.click
end

When(/^I search for "(.*?)" in the related products text area$/) do |searchprodterm|
  @current_page.searchprodterm = searchprodterm
  @browser.li(:text, /White/).when_present.click 
end




When(/^I enter "(.*?)"  in the related attribute text field$/) do |test|
  @current_page.test = test
end





When(/^I click on text field with the text "(.*?)"$/) do |catsearch|
  @current_page.cat_search_element.click
end

When(/^I search for "(.*?)" in the related category text field$/) do |searchfield|
  @current_page.searchfield = searchfield
  @browser.li(:text, /shirts/).when_present.click
 # @current_page.searchfield = searchfield
  #auto_content = @browser.div(:class => "simple_tags_wrapper categories").div(:class => "visual").div.ul(:class,'visual-list context-menu hide').lis
  #auto_content.each do |cat|
	#if cat.text.downcase == "#{searchfield}"
    #cat.click
	#sleep 10
	#end
  #end
end

When(/^I click on div with the class "(.*?)"$/) do |arg1|
  @current_page.div_element(:class => "row creative-options relative").click
end

When(/^I click on related attributes text field with the text "(.*?)"$/) do |attrsearch|
 @current_page.attr_search_element.click
 end

#When(/^I click on related attribute text field with the xpath "(.*?)"$/) do |attrsearch|
 # @current_page.attrsearch_element.click
#end

When(/^I search for "(.*?)" in the related attribute text field$/) do |searchattrterm|
  @current_page.searchattrterm = searchattrterm
  @browser.li(:text, /fit : tailored/).when_present.click
  
end

#When(/^I select fit:tailored from the attribute list$/) do
#When(/^I click on the first list element$/) do
 # @browser.ul(:class => "visual-list context-menu hide").li(:class => "visual-item").when_present.first.click
#end


# When(/^I click on div with the class "(.*?)"$/) do |arg1|
  # @current_page.div_element(:class => "row creative-options relative").click
# end



#When(/^I select "(.*?)" from the list$/) do |catlist|
 # @current_page.select_list_element(:xpath => "//div[@id='wrapper']/div[2]/div/div[2]/form/div[1]/div[3]/div[2]/fieldset/ul/li[2]/div/div/input/ul/li[16]").when_visible.select catlist
#end


# When(/^I click on "(.*?)" class to search for categories$/) do |catsearch|
  # @current_page.cat_search_element.click
# end

When(/^I click on span class "(.*?)" on the creativelisting page$/) do |newsetuptab|
  @current_page.new_setup_tab_element.click
end

Then(/^I enter the setup name as "(.*?)" on the adaptivecontent page$/) do |testsetup|
 @current_page.testsetup = testsetup
end

Then(/^I select placement as "(.*?)" on the adaptivecontent page$/) do |testsetupname|
  @current_page.select_list_element(:id => "htmlInjectionPoint").select testsetupname
end

Then(/^I select first creative as "(.*?)" on the adaptivecontent page$/) do |creative1|
  @current_page.select_list_element(:name => "creativeConfigs.itemsForView[0].creative").select creative1
end

Then(/^I click on "(.*?)" link on the adaptivecontent page$/) do |criterialink|
  @current_page.criterialink_submit_element.click
end

Then(/^I select option with the value "(.*?)" on the adaptivecontent page$/) do |rule|
  @browser.select_list(:class => "exp_left_hand").option(:value => "u.visitor").when_present.click
 end
 
 Then(/^select operatoroption with the value "(.*?)" on the adaptivecontent page$/) do |arg1|
 @browser.select_list(:class => "exp_op operatoroptions").option(:value => "=").when_present.click
end




#When(/^I click on the new setup link on the creativelisting page$/) do
#  @current_page.new_setup_link_element.when_visible.click
#@browser.div(:class => "secondary-nav").ul(:id => "mainTab").li.
#end
