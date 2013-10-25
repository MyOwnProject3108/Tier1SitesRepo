Given(/^I am using SMART-MailAPI to access livedemoshop(v1|v1_1|v1_2)$/) do |version, site|
 @api = Peerius::SmartmailAPI.new(site, version, FigNewton.base_url)
 @site=site
end
Given(/^I am using SMARTMailAPI to access livedemoshop$/) do
  @api = Peerius::SmartmailAPI.new(FigNewton.base_url)
end
Given(/^I am using wid (\d+)$/) do |wid|
  @api.json_wid = wid
end





When(/^I supply SMART\-mail parameters$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I am using client siteid  (\d+)$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I should get at least (\d+) items of SMART\-mail URL$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end