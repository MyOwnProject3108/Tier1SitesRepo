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
   @api.json_type = 'home'
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

When /^I track a order page$/ do
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

When /^I supply SMART\-ranking setup info$/ do
=begin New Style
  @api.json_smartRanking = {
      "facets" => "",
      "ordering" => {"orderBy" => "smart"},
      "page" => 1,
      "itemsPerPage" => 20,  
  }
=end 
@api.json_info = {
    "smartRanking" => {
      "facets" => "",
      "ordering" => {"orderBy" => "smart"},
      "page" => 1,
      "itemsPerPage" => 20,
     }  
  }
end

When /^I track a click for the first SMART-ranking item$/ do
    @api.should have_smart_ranking_content
    @api.ranking_widgets.count.should > 0
    @api.total_ranking_items.should > 0
    impressionId = @api.ranking_widgets[0]["impressionId"]
    productId = @api.ranking_widgets[0]["products"][0]["product"]["productId"]
    refcode = @api.ranking_widgets[0]["products"][0]["product"]["refCode"]
    @api.json_type = 'product'
    @api.json_product = {"refCode" => "#{refcode}"}
    @api.json_info = {
        "smartRanking" => {
            "click" => {
                "impressionId" => "#{impressionId}",
                "productId" => "#{productId}",
            }
        }
    }
    @api.track    
end

When /^I track a click for the first SMART\-rec$/ do
    @api.should have_smart_recs
    @api.rec_widgets.count.should > 0
    @api.total_recs.should > 0
    productId = @api.rec_widgets[0]["recs"][0]["id"]
    refcode = @api.rec_widgets[0]["recs"][0]["refCode"]
    @api.json_type = 'product'
    @api.json_product = {"refCode" => "#{refcode}"}
    @api.json_info = {
        "smartRecs" => {
                "click" => "#{productId}",
        }
    }
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
    @api.response_times.max.should be < expected.to_i
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
