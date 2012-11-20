Given /^I am using SMART\-API (v1|v1_1)?.?to access (.+)$/ do |version, site|
  @api = Peerius::SmartAPI.new(site, version, ENV["TEST_SERVER"])    
end

Given /^I am using client token (.+)$/ do |token|
  @api.json_clientToken = token
end

When /^I track a home page$/ do
   @api.json_type = 'home'
   @api.track
end

When /^I track an "other" page$/ do
   @api.json_type = 'home'
   @api.track
end

When /^I track a product page$/ do
   @api.json_type = 'product'
   @api.json_product = Peerius::SmartAPI::ProductInfo.new(:refCode => "abc123")
   @api.track
end

When /^I track a category page$/ do
   @api.json_type = 'category'
   @api.json_category = "Mens>Jeans"
   @api.track
end

When /^I track a basket page$/ do
  @api.json_type = 'basket'
  @api.track
end

When /^I track a checkout page$/ do
  @api.json_type = 'checkout'
  @api.track
end 

When /^I track a order page$/ do
  @api.json_type = 'checkout'
  @api.track
end

When /^I track a search results page$/ do
   @api.json_type = 'searchresults'
   @api.json_searchResults = {"term" => "handbags", "results" => []}
   @api.track
end 

When /^I track a brand page$/ do
   @api.json_type = 'brand'
   @api.json_brand = "Levis"
   @api.track
end

When /^I track an attribute page$/ do
   @api.json_type = 'attribute'
   @api.json_attribute = {"name" => "style", "value" => "Casual"}
   @api.track
end

Then /^I should get an? (.+) status back$/ do |status|
  #pp @api.url 
  pp @api.result  
  @api.result["status"].should eq(status)
end

Then /^I should get a response in less than (\d+)ms$/ do |expected|
    pp @api.response_times 
    @api.response_times.count.should be > 0
    @api.response_times.max.should be < expected.to_i
end 

Then /^I should see at least (\d+) SMART-rec in the response$/ do |expected_recs|
  #pp @api.result
  @api.result.has_key?("smartRecs").should be_true
  @api.result["smartRecs"].count.should > 0
end

Then /^I should get no SMART\-product content in the response$/ do
  pp @api.result
  @api.result.has_key?("smartRecs").should be_false
  @api.result.has_key?("smartContent").should be_false
  @api.result.has_key?("smartRanking").should be_false
end

Then /^I should at least (\d+) items? of SMART\-product content in the response$/ do |expected_content|
  #pp @api.result
  pending # express the regexp above with the code you wish you had
end
