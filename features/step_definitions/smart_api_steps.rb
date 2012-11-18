Given /^I am using SMART\-API (v1|v1_1)?.?to access (.+)$/ do |version, site|
  @api = Peerius::SmartAPI.new(site, version, ENV["TEST_SERVER"])    
end

Given /^I am using client token (.+)$/ do |token|
  @api.json_clientToken = token
end

When /^I track a search results page$/ do
   @api.json_type = 'searchresults'
   @api.json_searchResults = {"term" => "handbags", "results" => []}
   @api.track
end

When /^I track a product page$/ do
   @api.json_type = 'product'
   @api.json_product = {"refCode" => "abc123"}
   @api.track
end

When /^I track a home page$/ do
   @api.json_type = 'home'
   @api.track
end

Then /^I should get an? (.+) status back$/ do |status|
  pp @api.url 
  pp @api.result  
  @api.result["status"].should == status
end
