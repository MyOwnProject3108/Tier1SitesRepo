When /^I click on the create link on the smartcontent page$/ do
  @current_page.create_content_submit_element.click
end

Then /^I enter the creative name as "(.*?)"$/ do |creativename|
  @current_page.creativename = creativename
end

Then /^I enter the creative image url as "(.*?)"$/ do |creativeurl|
  @current_page.creativeurl = creativeurl
end

Then /^I enter the creative link url as "(.+)"$/ do |linkurl|
  @current_page.linkurl = linkurl
end

Then /^I enter related products as "(.+)" on the smartcontent creative page$/ do |relatedprod|
  @current_page.relatedprod = relatedprod
end

Then(/^I enter related category as "(.+)" on the smartcontent creative page$/)do |relatedcat|
  @current_page.relatedcat = relatedcat
end

Then /^I click on the search link on the smartcontent creative page for related categories$/ do
  @current_page.relatedcat_submit_element.click
end

#Then(/^I search for related category "(.*?)" on the smartcontent creative page$/) do |searchcat|
 # @current_page.searchcat_element.when_visible
#end

Then /^I click category search link on the smartcontent creative page$/ do
  @current_page.catsearch_link_submit_element.click
end

Then /^I select "(.+)" from the search results on the smartcontent creative page$/ do |resultpick|
  @current_page.resultpick_submit_element.click
end

Then /^I click on the category add the selections link on the smartcontent creative page$/ do
  @current_page.add_selection_link_element.click
end

Then(/^I enter related attributes as "(.*?)" on the smartcontent creative page$/) do |relatedattr|
  @current_page.relatedattr = relatedattr
end

Then /^I enter tags as "(.*?)" on the smartcontent creative page$/ do |tags|
  @current_page.tags = tags
end

Then /^I click on the save button on the smartcontent creative page$/ do
  @current_page.creative_save_submit_element.click
end

Then(/^I click on the cancel button on the smartcontent creative page$/) do
  @current_page.creative_cancel_submit_element.click
end


Then /^I click on the search link on the smartcontent creative page for related products$/ do
  @current_page.relatedprod_submit_element.click
end

Then(/^I click product search link on the smartcontent creative page$/) do
  @current_page.prodsearch_link_submit_element.click
end

Then /^I select a product from the search results on the smartcontent creative page$/ do
  @current_page.prodpick_submit_element.click
end


Then(/^I click on the product add the selections link on the smartcontent creative page$/) do
 @current_page.prodadd_selection_link_submit_element.click
end

Then(/^I search for related product "(.*?)" on the smartcontent creative page$/) do |relatedproductsearch|
  @current_page.relatedproductsearch = relatedproductsearch
end

Then(/^I select "(.*?)" from the product search results on the smartcontent creative page$/) do |prodresultpick|
 @current_page.prodresultpick_submit_element.click
end

Then(/^I select "(.*?)" from the category search results on the smartcontent creative page$/) do |catresultpick|
  cat = ['Jackets','Trousers','Waistcoats']
   	cat.each do |x|
	 @current_page.cell_element(:text => x).click
	end
 end
 
 Then(/^I select multiple "(.*?)" from the category search results on the smartcontent creative page$/) do |multipleprodpick|
  product = ['Gold plain woven tie','Charcoal plain woven tie','Blue gingham check narrow tie','Shaw navy floral woven tie','Dark navy narrow stripe narrow tie','Hudson magenta double mogador stripe handmade tie']
    product.each do |y|
	@current_page.cell_element(:text => y).click
	end
end

Then(/^I search for related category "(.*?)" on the smartcontent creative page$/) do |relatedcatsearch|
@current_page.relatedcatsearch = relatedcatsearch
#@current_page.relatedcatsearch = relatedcatsearch
#browser.form(:id, "signin").text_field(:id, "password").set("earth123")
 # @current_page.text_field(:name => "term").set("suits")
#@browser.text_field(:id => "term").set("suits")
#@current_page.text_field(:value, "").when_visible.set("suits")
#@current_page.text
end

#Then(/^I enter "(.*?)" on the smartcontent creative page$/) do |test|
 # my_element = @browser.text_field(:id => "term").when_present.set("test")
 #@current_page.text_field_element.visible?
#@current_page.test = test
#@current_page.text_field(:id => "term").set "test"
#@current_page.test_submit_element = test
# @current_page.text_field_element.when_present
 # puts("my_element")
 #on_page(Smartmanager::SmartcontentCreativePage).text_field(:id => "term").when_visible
  #on_page(Smartmanager::SmartcontentCreativePage).text_field(:id => "term").when_present.set("test")
 # end

  
# creative duplicate/delete/edit steps
When(/^I click on the last duplicate link on the smartcontent page$/) do
 @current_page.image_elements(:src => "/tracker/images/skin2/bolean.png").last.click
 end

When(/^I click on the last delete link on the smartcontent page$/) do
   message = @current_page.confirm(true) do
     @current_page.image_elements(:src => "/tracker/images/skin2/bin.png").last.click
     end
	message.should == "Delete creative?" 
end


Then(/^I click on all the delete rules on the smartcontent setup page$/) do
	rules_delete = ['tags_rule','default_rule','country_FR_rule','country_US_rule','country_GB_rule','segments_rule','gender_rule','keyword_rule','organic_rule','ppc_rule','source_rule','city_rule','smart_rule','visitor_new_rule','visitor_returning_rule','customer_new_rule','direct_rule','customer_returning_rule']
	rules_delete.each do |y|
	link_href = @browser.a(:text=> y).attribute_value("href")
	link_href_arr = link_href.split("?")
	@browser.a(:href=>"delete.page?d#{link_href_arr[link_href_arr.count - 1]}").click
 end
end

When(/^I click on the last edit link on the smartcontent page$/) do
   @current_page.image_elements(:src => "/tracker/images/skin2/edit.png").last.click
end 

Then /^I click on the delete creative link on the smartcontent creative page$/ do
  @current_page.delete_creative_link_element.click
end

Then(/^I should see Add Creative button on the smartcontent creative page$/) do
 puts @current_page.button_element(:value => "Add Creative").exists?
end

Then /^I click on the Advanced creative link on the smartcontent creative page$/ do
  @current_page.advanced_creative_link_element.click
end

Then /^I should see Html label of the creative on the smartcontent creative page$/ do
 puts @current_page.label_element(:text => "Html").exists?
end

Then(/^I click on the Add Creative button on the smartcontent creative page$/) do
  @current_page.add_creative_button_element.click
end

Then(/^I enter the second creative image url as "(.*?)"$/) do |creativeurl2|
  @current_page.creativeurl2 = creativeurl2
end

Then(/^I enter the second creative link url as "(.*?)"$/) do |linkurl2|
  @current_page.linkurl2 = linkurl2
end

When(/^I click on the setup link on the smartcontent page$/) do
  @current_page.setup_link_element.click
end

Then(/^I click on the create link on the smartcontent setup page$/) do
  @current_page.create_dynamiccontent_link_element.click
end

Then(/^I enter content name as "(.*?)" on the smartcontent location page$/) do |contentname|
 @current_page.contentname = contentname
end

Then(/^I select content location as home page \(center\)$/) do
  @current_page.select_list_element(:name => "htmlInjectionPoint").select "home page (center)"
end

Then(/^I click on the Add content button on the smartcontent location page$/) do
@current_page.add_content_submit_element.click
end

Then(/^I select creative image as "(.*?)" on the smartcontent location page$/) do |creativeimage|
  @current_page.select_list_element(:name => "creativeConfigs.itemsForView[0].creative").select creativeimage
end

Then(/^I select creative image as "(.*?)" on the smartcontent location page at priority(\d+)$/) do |img2, pri2|
  @current_page.select_list_element(:name => "creativeConfigs.itemsForView[1].creative").select img2
end

Then(/^I select third creative image as "(.*?)" on the smartcontent location page at priority(\d+)$/) do |img3, pri3|
  @current_page.select_list_element(:name => "creativeConfigs.itemsForView[2].creative").select img3
end


Then(/^I enter "(.+)" in the criteria(\d+) position on the smartcontent location page$/) do |rule, criteria|
  @current_page.rule = rule
end

Then(/^I enter "(.*?)" in the "(.*?)" position on the smartcontent location page$/) do |rule1, criteria1|
  @current_page.rule1 = rule1
end


Then(/^I click on the save button on the smartcontent location page$/) do
  @current_page.save_button_submit_element.click
end

Then(/^I Activate the last smartcontent setup on the smartcontent page$/) do
 # @current_page.image_submit_element.click
 @current_page.image_elements(:src => "/tracker/images/skin2/thick.png").last.click
end

Then(/^I click on the Activate button on the smartcontent activation page$/) do
  @current_page.activate_content_element.click
end

Then(/^the debug info should show the SMART\-content$/) do
 # puts @current_page.cell_element(:text => "SmartContent :").exists?
#puts @browser.h2(:xpath => "//*[@id='peeriusDebug']/table[2]/tbody/tr[1]/th/h2").text
# puts @browser.text.include?("SmartContent :")
#puts @browser.h2(:xpath => "//*[@id='peeriusDebug']/table[2]/tbody/tr[1]/th/h2").exists?
puts @browser.text.include? 'SmartContent : AutoCTShirtsSmartContent (66)'
 #@browser.send_keys("{ENTER}")
end

Then(/^I click on the last edit link on the smartcontent setup page$/) do
  @current_page.image_elements(:src => "/tracker/images/skin2/edit.png").last.click
end

Then(/^I click on the delete content button on the smartcontent location page$/) do
  @current_page.delete_submit_element.click
end

Then(/^I click on the last delete link on the smartcontent setup page$/) do
  @current_page.image_elements(:src => "/tracker/images/skin2/bin.png").last.click
end

Then(/^I should see "(.*?)" message on the smartcontent location page$/) do |contentmessage|
  @current_page.content_message.should == contentmessage
end

#Given(/^I select ctshirts from the sites list on the smartmanager home page$/) do
 #@current_page.select_list_element(:name => "siteName").when_present.select "ctshirts"
#end

Given(/^I select "(.*?)" from the sites list on the smartmanager home page$/) do |siteselection|
 @current_page.siteselection = siteselection
end


Then(/^I select content location as HomePagebanner(\d+)$/) do |location1|
   @current_page.select_list_element(:name => "htmlInjectionPoint").select "HomePagebanner1"
end

When(/^I visit the ctshirts home page$/) do
  visit Ctshirts::HomePage
   #@browser.send_keys("{ENTER}")
end

Then(/^I select content location as Home_JSON_IP$/) do
  @current_page.select_list_element(:name => "htmlInjectionPoint").select "Home_JSON_IP"
end

###
Then(/^I enter content name as <SetupName> on the smartcontent location page$/) do|contentname|
  @current_page.contentname = contentname
end

Then(/^I enter <Criteria> in the criteria(\d+) position on the smartcontent location page$/) do |rule1, criteria1|
  @current_page.rule1 = rule1
end

Then(/^I enter criteria3 in the "([^"]*)" position on the smartcontent location page$/) do |criteria3|
	#on_page(Smartmanager::SmartcontentCreativePage).textarea(:name => "creativeConfigs.itemsForView[2].expression").when_present.set(criteria3)
	#@current_page.cell_element(:name => "creativeConfigs.itemsForView[2].expression").criteria3
    #@current_page.textarea(:name => criteria3)
	# @current_page.textarea (:name => "creativeConfigs.itemsForView[2].expression").select criteria3
	#@current_page.fill_in 'name', :with => criteria3  :username, :id=>"login_email"
end

Then(/^I select image1 as "([^.]*?)" on the smartcontent location page$/) do |imagename1|
  @current_page.select_list_element(:name => "creativeConfigs.itemsForView[0].creative").select imagename1
end

Then(/^I select image2 as "([^.]*?)" on the smartcontent location page$/) do |imagename2|
  @current_page.select_list_element(:name => "creativeConfigs.itemsForView[1].creative").select imagename2
end

Then(/^I select image3 as "(.*?)" on the smartcontent location page$/) do |imagename3|
  @current_page.select_list_element(:name => "creativeConfigs.itemsForView[2].creative").select imagename3
end

##
