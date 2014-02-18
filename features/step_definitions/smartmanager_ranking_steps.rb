When /^I click on the create link on the smartranking page$/ do
  @current_page.create_ranking_submit_element.click
end

Then /^I enter the category name as "(.+)"$/ do |categoryranking|
  @current_page.categoryranking = categoryranking
end

Then /^I select ranking position as "(.*?)"$/ do |rankingposition|
  @current_page.rankingposition = rankingposition
end

Then /^I click the checkbox for allCategories$/ do
  @current_page.check_allCategories_element.click
end

Then(/^I save the smart ranking configuration$/) do
  @current_page.ranking_save_submit_element.click
end

Then(/^I preview the smart ranking configuration$/) do
  @current_page.ranking_preview_submit_element.click
end

Then(/^I should see "(.+)" message on the configuration page$/) do |validcategorymsg|
  @current_page.validcategory_message.should == validcategorymsg
end

#Then(/^I search for valid category the smartranking configuration page$/) do
 # @current_page.search_link_submit_element.click
#end

#Then(/^I enter search term as "(.*?)"$/) do |categorysearchterm|
 # @current_page.categorysearchterm = categorysearchterm
#end

#Then(/^I click on the search link on the configuration page$/) do
 # @current_page.search_link_submit_element.click
#end

#Then(/^I click on the search link on the configuration page$/) do
 # @current_page.search_link_submit_element.click
#end

Then /^I click on the search link on the smartranking configuration page$/ do
  @current_page.search_link_submit_element.click
end

Then /^I search for "(.+)" on the smartranking configuration page$/ do |categorysearchterm|
 @current_page.categorysearchterm = categorysearchterm
end

Then /^I click category search link on the smartranking configuration page$/ do

  @current_page.category_search_link_submit_element.click
end

Then /^I select "(.+)" from the search results on the smartranking configuration page$/ do |catselect|
  @current_page.search_results_element.click
end

Then /^I click on the preview button on the smartranking configuration page$/ do
  @current_page.preview_submit_element.click
end



#When /^I navigate to the demoshop authentication page$/ do
 # @browser.goto "http://demoshop:P@ssw0rd@demo.peerius.com"
 #@browser.goto "http://demo.peerius.com."
#end

#When(/^I go to the demoshop$/) do
 # @browser. goto "http://demoshop:P@ssw0rd@demo.peerius.com"
#end



