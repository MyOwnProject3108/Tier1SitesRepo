Given /^I am using SMART\-API (v1|v1_1)?.?to access (.+)$/ do |version, site|
  @api = Peerius::SmartAPI.new(site, version, FigNewton.base_url)    
end

Given /^I am using client token (.+)$/ do |token|
  @api.json_clientToken = token
end

When /^I track (?:a|the) home page$/ do
   @api.json_type = 'home'
   @api.track
end

When /^I track an "?other"? page$/ do
   @api.json_type = 'other'
   @api.track
end

When /^I track a product page$/ do
   @api.json_type = 'product'
   @api.json_product = {"refCode" => "abc123"}
   @api.track
end

When /^I track a category page$/ do
   @api.json_type = 'category'
   @api.json_category = "ties"
   @api.track
end

When /^I track a basket page$/ do
  @api.json_type = 'basket'
  items = [
      {"refCode" => "RC123", "qty" => 5, "price" => 50.5},
      {"refCode" => "RC124", "qty" => 8, "price" => 52.5},
  ]
  @api.json_basket = {"items" => items, "currency" => "GBP"} 
  @api.track
end

When /^I track a checkout page$/ do
    @api.json_type = 'checkout'
    items = [
        {"refCode" => "RC123", "qty" => 5, "price" => 50.5},
        {"refCode" => "RC124", "qty" => 8, "price" => 52.5},
    ]
    @api.json_checkout = {
        "items" => items, 
        "currency" => "GBP",
        "subtotal" => 103,
        "shipping" => 11.75,
        "total" => 114.75
    }
    @api.track
end 

When /^I track an order page$/ do
    @api.json_type = 'order'
    items = [
        {"refCode" => "RC123", "qty" => 5, "price" => 50.5},
        {"refCode" => "RC124", "qty" => 8, "price" => 52.5},
    ]
    @api.json_order = {
        "orderNo" => "ABS-DE-123456",
        "items" => items, 
        "currency" => "GBP",
        "subtotal" => 103,
        "shipping" => 11.75,
        "total" => 114.75
    }
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

When /^I track the same page another (\d+) times$/ do |n|
  n.to_i.times do 
    @api.track
  end
end 

When /^I supply SMART\-ranking setup info$/ do
  @api.json_smartRanking = {
      "facets" => "category=\"ties\"",
      "ordering" => {"orderBy" => "smart"},
      "page" => 1,
      "itemsPerPage" => 20,  
  }  
end

#
# Ordering
#
When /^I purchase a "(.*?)" using the SMART\-API$/ do |item|
  step "I purchase 1 \"#{item}\" using the SMART\-API"
end

When /^I purchase (\d+) "(.*?)" using the SMART\-API$/ do |quantity, item|
    @api.json_type = 'order'
    items = [
        {"refCode" => "#{item}", "qty" => quantity.to_i, "price" => 50.50},
    ]
    @api.json_order = {
        "orderNo" => "ABS-DE-123456",
        "items" => items, 
        "currency" => "GBP",
        "subtotal" => 50.50,
        "shipping" => 1.00,
        "total" => 51.50
    }
    @api.track
end

#
# Clicks
#
When /^I track a click for the first SMART-ranking item$/ do
    @api.should have_smart_ranking_content
    @api.ranking_widgets.count.should > 0
    @api.total_ranking_items.should > 0
    @api.ranking_click
    @api.track    
end

When /^I track a click for SMART-ranking item number (\d+)$/ do |product|
    @api.should have_smart_ranking_content
    @api.ranking_widgets.count.should > 0
    @api.total_ranking_items.should > 0
    product_index = product.to_i - 1
    @api.ranking_click(product_index)
    @api.track    
end

When /^I track a click for the first SMART\-rec$/ do
    @api.should have_smart_recs
    @api.rec_widgets.count.should > 0
    @api.total_recs.should > 0
    @api.rec_click
    @api.track
end

When /^I track a click for the first SMART\-content creative$/ do
    @api.should have_smart_content
    @api.creative_click
    @api.track
end

Then /^I should get an? (.+) status back$/ do |status|
    #puts @api.json_request 
    #pp @api.result  
    @api.result["status"].should eq(status)
end

Then /^I should get a response in less than (\d+)ms$/ do |expected|
    #pp @api.response_times 
    @api.response_times.count.should be > 0
    @api.average_response_time.should be < expected.to_i
end 

Then /^I should get at least (\d+) SMART-recs? in the response$/ do |expected_recs|
    #pp @api.result
    @api.should have_smart_recs
    @api.rec_widgets.count.should > 0
    @api.total_recs.should >= expected_recs.to_i
end

Then /^I should get at least (\d+) items? of SMART\-ranking content$/ do |expected_items|
    #pp @api.result
    @api.should have_smart_ranking_content
    @api.ranking_widgets.count.should > 0
    @api.total_ranking_items.should >= expected_items.to_i
end

Then /^I should get no SMART\-product content in the response$/ do
    #pp @api.result
    @api.should_not have_smart_product_content
end

Then /^I should get at least (\d+) items? of SMART\-product content in the response$/ do |expected_content|
    #pp @api.result
    @api.should have_smart_product_content
end

Then /^the first SMART\-content creative name should contain "(.*?)"$/ do |expected_string|
  @api.should have_smart_content
  @api.content_creatives[0]["name"].should include(expected_string)
end
