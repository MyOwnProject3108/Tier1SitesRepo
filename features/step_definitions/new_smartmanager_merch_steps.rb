Then(/^I click on the create a new campaign link on the merchoverview page$/) do
  @current_page.create_merch_campaign_submit_element.click
end

Then(/^I enter merch campaign name as "(.*?)"$/) do |merchcampaignname|
  @current_page.merchcampaignname = merchcampaignname
 end

Then(/^I enter merch campaign display title as "(.*?)"$/) do |merchdisplaytitle|
  @current_page.merchdisplaytitle = merchdisplaytitle
end

#Then(/^I select location as "(.*?)" from the Location select list on Newmerchandisingcreate page$/) do |pagelocation|
 # @current_page.pagelocation = pagelocation
#end

Then(/^I select location from the Location select list on the Newmerchandisingcreate page$/) do
 @current_page.select_list_element(:id => "location").when_present.select "Product Page"
 #@current_page.select_list_element(:id => "location").option(:value => "PRODUCT_PAGE").click
end

Then(/^I click the next button on the Newmerchandisingcreate page$/) do
 @current_page.next_submit_element.click
end

Then(/^I click the next button on the Masterruleconfig page$/) do
 @current_page.next_submit_element.click
end

Then(/^I click the edit rule button on the Recrulesconfig page$/) do
 @current_page.edit_rule_submit_element.click
end

#Then(/^I select attribute as "(.*?)" on Recrulesconfig page$/) do |setexp|
 #@current_page.select_list_element(:class => "exp_left_hand").option(:value => "r.saleprice").when_present.click
# end
 
# Then(/^I click on class "(.*?)" on Recrulesconfig page$/) do |setexpression|
 # @current_page.set_expression_element.click
#end

Then(/^I click on class exp_left_hand with text "(.*?)" on Recrulesconfig page$/) do |setexpression|
#  @current_page.setexpression = setexpression
#@current_page.set_expression_element.click

@browser.div(:class => "exp_left_hand").option(:text => "Please select").when_present.click
  
end