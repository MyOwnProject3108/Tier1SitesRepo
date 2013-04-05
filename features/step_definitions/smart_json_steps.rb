Given /^I am utilizing SMART\-JSON (v1|v1_1)?.?to access (.+)$/ do |version, site|
  @json = Peerius::SmartJSON.new(site, version, FigNewton.base_url)    
end

Given /^I am utilizing client token (.+)$/ do |token|
  @json.json_clientToken = token
end

Given /^I request (.+) json abgroup information$/ do |type|
  @json.json_abTestContent= type
end

Given /^I request (.+) json rec content$/ do |type|
  @json.json_recContent = type
end

Given /^I request (.+) json attributes?$/ do |num_attributes|
  case num_attributes
  when "all"
    @json.json_smartRecs = {"showAttributes" => ["*"]} 
  when "one"
    @json.json_smartRecs = {"showAttributes" => ["pricerange"]}   
  end    
end

Given /^I am utilizing session id (.+)$/ do |session|
  @json.session = session
end

Given /^I am utilizing customer id (.+)$/ do |cuid|
  @json.cuid = cuid
end

Given(/^I am utilizing the previous session id$/) do
  @json.session = $current_session
end

Given(/^I am utilizing the previous customer id$/) do
  @json.cuid = $current_cuid
end


Given(/^I am utilizing username "(.+)" and email "(.+)"$/) do |username, email|
   @json.json_user = {
       "name" => username,
       "email" => email
     }
end

Given(/^the current URI is "(.+)"$/) do |uri|
  @json.json_currentURI = uri
end

Given(/^the previous URI is "(.+)"$/) do |uri|
  @json.json_previousURI = uri
end

When /^I track (?:a|the) json home page$/ do
   @json.json_type = 'home'
   @json.track
end

When /^I track (?:the|an) "?other"? page$/ do
   @json.json_type = 'other'
   @json.track
end

When /^I track  (?:a|the) json product page$/ do
   @json.json_type = 'product'
   @json.json_product = {"refCode" => "prod-dw041dpu"}
   @json.track
end

When /^I track (?:a|the) json category page$/ do
   @json.json_type = 'category'
   @json.json_category = "ties"
   @json.track
end

When /^I track (?:a|the) json basket page$/ do
  @json.json_type = 'basket'
  items = [
      {"refCode" => "prod-dw041dpu", "qty" => 5, "price" => 50.5},
      {"refCode" => "prod-bl020nav", "qty" => 8, "price" => 52.5},
  ]
  @json.json_basket = {"items" => items, "currency" => "GBP"} 
  @json.track
end

When /^I track (?:a|the) json checkout page$/ do
    @json.json_type = 'checkout'
    items = [
        {"refCode" => "prod-dw041dpu", "qty" => 5, "price" => 50.5},
        {"refCode" => "prod-bl020nav", "qty" => 8, "price" => 52.5},
    ]
    @json.json_checkout = {
        "items" => items, 
        "currency" => "GBP",
        "subtotal" => 103,
        "shipping" => 11.75,
        "total" => 114.75
    }
    @json.track
end 

When /^I track (?:the|an) json order page$/ do
    @json.json_type = 'order'
    items = [
        {"refCode" => "prod-dw041dpu", "qty" => 5, "price" => 50.5},
        {"refCode" => "prod-bl020nav", "qty" => 8, "price" => 52.5},
    ]
    @json.json_order = {
        "orderNo" => "API-ABC123-#{Time.now.to_i}",
        "items" => items, 
        "currency" => "GBP",
        "subtotal" => 103,
        "shipping" => 11.75,
        "total" => 114.75
    }
    @json.track
end

When /^I track (?:the|a) json search results page$/ do
   @json.json_type = 'searchresults'
   @json.json_searchResults = {"term" => "handbags", "results" => []}
   @json.track
end 

When /^I track (?:the|a) json brand page$/ do
   @json.json_type = 'brand'
   @json.json_brand = "Levis"
   @json.track
end

When /^I track (?:the|an) json attribute page$/ do
   @json.json_type = 'attribute'
   @json.json_attribute = {"name" => "style", "value" => "Casual"}
   @json.track
end

When /^I track the same page another (\d+) times$/ do |n|
  n.to_i.times do 
    @json.track
  end
end 

When /^I supply SMART\-ranking setup info$/ do
  @json.json_smartRanking = {
      "facets" => "category=\"ties\"",
      "ordering" => {"orderBy" => "smart"},
      "page" => 1,
      "itemsPerPage" => 20,  
  }  
end


#
# Ordering
#
When /^I (?:purchase|order) a "(.*?)" utilizing the SMART\-API\w*(#?.*)$/ do |item,comment|
  step "I purchase 1 \"#{item}\" utilizing the SMART\-API"
end

When /^I (?:purchase|order) (\d+) "(.*?)" utilizing the SMART\-API\w*(#?.*)$/ do |quantity, item, comment|
    @json.json_type = 'order'
    items = [
        {"refCode" => "#{item}", "qty" => quantity.to_i, "price" => 50.50},
    ]
    @json.json_order = {
        "orderNo" => "API-#{item}-#{Time.now.to_i}",
        "items" => items, 
        "currency" => "GBP",
        "subtotal" => 50.50,
        "shipping" => 1.00,
        "total" => 51.50
    }
    @json.track
end

#
# Clicks
#
When /^I track a click for the first SMART-ranking item$/ do
    @json.should have_smart_ranking_content
    @json.ranking_widgets.count.should > 0
    @json.total_ranking_items.should > 0
    @json.ranking_click
    @json.track    
end

When /^I track a click for SMART-ranking item number (\d+)$/ do |product|
    @json.should have_smart_ranking_content
    @json.ranking_widgets.count.should > 0
    @json.total_ranking_items.should > 0
    product_index = product.to_i - 1
    @json.ranking_click(product_index)
    @json.track    
end

When /^I track a click for the json first SMART\-rec$/ do
    @json.should have_smart_recs
    @json.rec_widgets.count.should > 0
    @json.total_recs.should > 0
    @json.rec_click
    @json.track
end

When /^I track a click for the first json SMART\-content creative$/ do
    @json.should have_smart_content
    @json.creative_click
    @json.track
end

Then /^I should get an? (.+) json status back$/ do |status|
    #puts @json.json_request 
    #pp @json.result  
    @json.result["status"].should eq(status)
    $current_session = @json.result["session"]["session"]
    $current_cuid = @json.result["session"]["cuid"]
end

Then /^I should get a response in less than (\d+)ms$/ do |expected|
    #pp @json.response_times 
    @json.response_times.count.should be > 0
    @json.average_response_time.should be < expected.to_i
end 

Then /^I should get at least (\d+) SMART-recs? in the response$/ do |expected_recs|
    #pp @json.result
    @json.should have_smart_recs
    @json.rec_widgets.count.should > 0
    @json.total_recs.should >= expected_recs.to_i
end

Then /^I should get at least (\d+) json SMART-content creatives? in the response$/ do |expected_creatives|
    @json.content_creatives.collect{|x| puts "\n#{x["position"]}: #{x["name"]}"} if ENV["jsondebug"]
    @json.should have_smart_content
    @json.content_creatives.count.should >= expected_creatives.to_i
end

Then /^I should get at least (\d+) items? of json SMART\-ranking content$/ do |expected_items|
    #pp @json.result
    @json.should have_smart_ranking_content
    @json.ranking_widgets.count.should > 0
    @json.total_ranking_items.should >= expected_items.to_i
end

Then /^I should get no json SMART\-product content in the response$/ do
    #pp @json.result
    @json.should_not have_smart_product_content
end

Then /^I should get at least (\d+) items? of json SMART\-product content in the response$/ do |expected_content|
    #pp @json.result
    @json.should have_smart_product_content
end

Then /^the first json SMART\-content creative name should contain "(.*?)"$/ do |expected_string|
  #@json.content_creatives.collect{|x| puts "\n{x["position"]}: #{x["name"]}"}
  @json.should have_smart_content
  @json.content_creatives[0]["name"].should include(expected_string)
end

Then /^one of the json SMART\-content creative names should contain "(.*?)"$/ do |expected_string|
  #@json.content_creatives.collect{|x| puts "\n#{x["position"]}: #{x["name"]}"}
  @json.should have_smart_content
  
  has_expected_creative = false
  @json.content_creatives.each {|creative|
    has_expected_creative = true if creative["name"].include?(expected_string)
  }
  has_expected_creative.should == true
end

#
# A/B Tests
#
Then /^I should see which (.+) json abgroup I am serving$/ do |expected_product|
  has_expected_product = false
  
 # pp @json.result["info"]["abtest"]
  @json.result.should have_key("info")
  @json.result["info"].should have_key("abtest")
  @json.result["info"]["abtest"].should have_at_least(1).product
  
  # Check to see that one of the products is the one we are looking for 
  @json.result["info"]["abtest"].each {|product| 
  if product.has_key?(expected_product) then
    has_expected_product = true
    
    # Check that the product has an abgroup defined
    product[expected_product].should have_at_least(1).items
    product[expected_product].each {|config|
      config.should have_key("group")
    }
  end
  }
  
  has_expected_product.should == true
  
end

Then /^I should see at least (\d+) (.+) ab test configs?$/ do |expected_configs, expected_product|
  # pp @json.result["info"]["abtest"]
  @json.result.should have_key("info")
  @json.result["info"].should have_key("abtest")
  @json.result["info"]["abtest"].should have_at_least(1).product
  
  # Check to see that one of the products is the one we are looking for 
  @json.result["info"]["abtest"].each {|product| 
  if product.has_key?(expected_product) then
    has_expected_product = true
    
    # Check that the product has an abgroup defined
    product[expected_product].should have_at_least(1).items
    product[expected_product].each {|config|
      config.should have_key("configs")
      config["configs"].size.should >= expected_configs.to_i 
    }
  end
  }
end

#
# Attributes
#
Then /^I should see at least (\d+) attributes? per rec$/ do |expected_attributes|
  @json.should have_smart_recs
  @json.rec_widgets.count.should > 0
  @json.total_recs.should > 0
  @json.rec_widgets[0]["recs"][0].should have_key("attributes")
  @json.rec_widgets[0]["recs"][0]["attributes"].should have_at_least(expected_attributes).entries
end

Then /^I should see exactly (\d+) attributes? per rec$/ do |expected_attributes|
  @json.should have_smart_recs
  @json.rec_widgets.count.should > 0
  @json.total_recs.should > 0
  @json.rec_widgets[0]["recs"][0].should have_key("attributes")
  @json.rec_widgets[0]["recs"][0]["attributes"].should have(expected_attributes).entries
  
end

Then /^I should see no attributes$/ do
  @json.should have_smart_recs
  @json.rec_widgets.count.should > 0
  @json.total_recs.should > 0
  @json.rec_widgets[0]["recs"][0].should_not have_key("attributes")
end


