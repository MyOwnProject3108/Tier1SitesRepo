When(/^I click on the smartmanger ranking link$/) do
  @current_page.ranking_link_element.click
end

When(/^I click on the link Create a new campaign on the adaptivelisting page$/) do
  @current_page.create_new_campaign_submit_element.click
 # @current_page.create_ranking_submit_element.click
end

When(/^I click on span with the text "(.*?)" on the adaptivelisting page$/) do |newconfig|
  @current_page.new_config_element.click
end

Then(/^I enter ranking campaign name as "(.*?)" on the rankingconfig page$/) do |rankingname|
  @current_page.rankingname = rankingname
end

When(/^I click on Add all categories checkbox on the rankingconfig page$/) do
  @current_page.all_categories_element.click
end

Then(/^I enter influence name as "(.*?)" on the rankingconfig page$/) do |influencename|
  @current_page.influencename = influencename
end

Then(/^I select influence type as "(.*?)" on the rankingconfig page$/) do |influencetype|
  @current_page.influencetype_submit_element.click
end

Then(/^I select influence type "(.*?)" on the rankingconfig page$/) do |influencetype2|
  @current_page.influencetype2_submit_element.click
end


Then(/^I enter pin position as "(.*?)" on the rankingconfig page$/) do |pinposition|
  @current_page.pinposition = pinposition
end

Then(/^I enter boost percentage as "(.*?)" on the rankingconfig page$/) do |boostpercentage|
  @current_page.boostpercentage = boostpercentage
end

Then(/^I select startdate as currentdate$/) do
@browser.span(:class => "add-on sm-icon-calendar").click
@browser.a(:class => "ui-state-default ui-state-highlight").click
end

Then(/^I search for the category "(.*?)" on the rankingconfig page$/) do |rankcat|
  @current_page.rankcat = rankcat
end


Then(/^I select option with the value "(.*?)" in apply when condition$/) do |applywhencondition|
@browser.select_list(:class => "exp_left_hand", :index => 1).option(:value => "#{applywhencondition}").when_present.click
end

 Then(/^select operatoroption with the value "(.*?)" in apply when condition$/) do |applywhenoperator|
# @browser.select_list(:class => "exp_op operatoroptions").option(:value => "=").when_present.click                  working working
@browser.select_list(:class => "exp_op operatoroptions", :index => 1).option(:value => "#{applywhenoperator}").when_present.click
end

Then(/^I search for the category "(.*?)" in apply when condition on the rankingconfig page$/) do |applywhenrankcat|
  @current_page.applywhenrankcat = applywhenrankcat
end

 Then(/^I click on save ranking button on the rankingconfig page$/) do
  @current_page.save_ranking_submit_element.click
end


 
#Then(/^I select option with the value "(.*?)"$/) do |srexp|
 # @browser.select_list(:class => "exp_left_hand").option(:value => "#{srexp}").when_present.click
#end



