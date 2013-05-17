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

Then(/^I enter "(.+)" in the "(.+)" position on the smartcontent location page$/) do |rule, criteria|
  slots = [1,2]
  slots.each do |x|
  @current_page.text_area_element(:class => "autocomplete").set rule
  end
end
