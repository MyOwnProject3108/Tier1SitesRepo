Given(/^I am using SMART\-AJAX (v1|v1_1|v1_2)?.?to access (.+)$/) do |version, site|
  @api = Peerius::SmartAjax.new(site, version, FigNewton.base_url)
  @site = site   
end

Then(/^I request ajax call for click$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see which smartRecs click in DB$/) do
  pending # express the regexp above with the code you wish you had
end
