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

Then(/^I click on "(.*?)" class on the Recrulesconfig page$/) do |exp|
@browser.div(:class => "rules-panel master-rules-left clear clearfix").ul.li.div.select_list(:class => "exp_left_hand").click 
end

#Then(/^I select the hint as "(.*?)" on the Recrulesconfig page$/) do |merchhint|
 #  @browser.div(:class => "rules-panel master-rules-left clear clearfix").ul.li.div.select_list(:class => "exp_left_hand").option(:value => "r.gender").when_present.click
  #@browser.select_list(:class => "exp_left_hand").option(:value => "r.category").when_present.click
#end

Then(/^I click on the first group select list on the Recrulesconfig page$/) do
@browser.select_list(:xpath => "//div[@id='recommendation-rules']/div[1]/div/div/div[@id='sidebar']/ul/li/div[3]/div/div/ul/li/ul/li/div/select[1]").when_present.click
end

Then(/^I select option with the value "(.*?)" on the Recrulesconfig page$/) do |exp|
@browser.select_list(:xpath => "//div[@id='recommendation-rules']/div[1]/div/div/div[@id='sidebar']/ul/li/div[3]/div/div/ul/li/ul/li/div/select[1]").option(:value, "#{exp}").when_present.click
 end
 
 # Then(/^I click on the merch toggle textarea with id "(.*?)"$/) do |tamerch|
  #@browser.text_area(:class => "input-medium the_expression span11 advanced_expression").click
  # @browser.text_area(:id => "#{tamerch}").click
#end


#Then(/^I select "(.*?)" as a hint on the Recrulesconfig page$/) do |hint1|
#@browser.select_list(:xpath => "//div[@id='recommendation-rules']/div[1]/div/div/div[@id='sidebar']/ul/li/div[3]/div/div/ul/li/ul/li/div/select[1]").option(:value, "r.gender").when_present.click
#end

 Then(/^select an expoperatoroption with the value "(.*?)" on the Recrulesconfig page$/) do |op1|
  @browser.select_list(:xpath => "//div[@id='sidebar']/ul/li/div[3]/div/div/ul/li/ul/li/div/select[2]").option(:value => "#{op1}").when_present.click
end

Then(/^I enter merch rule as "(.*?)" on the Recrulesconfig page$/) do |merchrule1|
  @current_page.merchrule1 = merchrule1
 end
 
Then(/^I click on list with the class "(.*?)" on the Recrulesconfig page$/) do |attrlist|
  #@browser.text_area(:class => "input-medium the_expression span11 advanced_expression").click
  # @browser.text_area(:name => "#{ta1}").click
  @current_page.attr_list_submit_element.click
  
end

 Then(/^I click on Save Setup button on the Recrulesconfig page$/) do
  @current_page.merch_setup_submit_element.click
end

Then(/^I click on Click to add master rules link on the Masterruleconfig page$/) do
 @current_page.master_rule_submit_element.click
end

Then(/^I select expression option with the value "(.*?)" on the Masterruleconfig page$/) do |master|
@browser.select_list(:class => "exp_left_hand").option(:value, "#{master}").when_present.click
 end
 
Then(/^select an expoperatoroption with the value "(.*?)" on the Masterruleconfig page$/) do |opt|
@browser.select_list(:class => "exp_op operatoroptions").option(:value => "#{opt}").when_present.click
end

Then(/^I enter merch rule as "(.*?)" on the Masterruleconfig page$/) do |merchval|
   @current_page.merchval = merchval
end