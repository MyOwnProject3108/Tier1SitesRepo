##*********************for adding new steps -add at the top, so we know when any new step is added*****************************######################
When(/^I request invalid order details for order page$/) do
@api.json_type = 'order'
    items = [
        {"refCode" => "prod-dw041dpu", "qty" => 5, "price" => 50.5},
        {"refCode" => "prod-bl020nav", "qty" => 8, "price" => 52.5},
    ]
    @api.json_order = {
        "orderNo" => "",
        "items" => items, 
        "currency" => "GBP",
        "subtotal" => 103,
        "shipping" => 11.75,
        "total" => 114.75
    }
    @api.track
end

When(/^I request invalid order details for order page if currency is missing$/) do
@api.json_type = 'order'
    items = [
        {"refCode" => "prod-dw041dpu", "qty" => 5, "price" => 50.5},
        {"refCode" => "prod-bl020nav", "qty" => 8, "price" => 52.5},
    ]
    @api.json_order = {
        "orderNo" => "API-ABC123-#{Time.now.to_i}",
        "items" => items, 
        "currency" => "",
        "subtotal" => 103,
        "shipping" => 11.75,
        "total" => 114.75
    }
    @api.track
end

Given(/^I am using mobileapp api token "(.*?)"$/) do |arg1|
#Given(/^I am using mobileapp api token rye(\d+)sdyu(\d+)s$/) do |arg1, arg2|
  #@api.mobileapp_api()
  #@api.json_mobileapp_api= 
end

When(/^I track "(.*?)" basket page by using mobileapp api token "(.*?)" with firstrefcd "(.*?)" secndrefcd "(.*?)"$/) do |site1, mob_apikeyliv,refcd1,refcd2|
	@api.json_type = "channel"
	@api.json_channel = "mobileapp"
	@api.json_clientToken = mob_apikeyliv
	@api.json_type = 'basket'
	items = [
      {"refCode" => refcd1, "qty" => 5, "price" => 69.9},
      {"refCode" => refcd2, "qty" => 8, "price" => 32.3},
		]
  @api.json_basket = {"items" => items, "currency" => "GBP"} 
  @api.track
end

When(/^I track "(.*?)" home page by using mobileapp api token "(.*?)"$/) do |site1, mob_apikeyliv|
	@api.json_type = "channel"
	@api.json_channel = "mobileapp"
	@api.json_type = 'home'
	#@api."channel" => "mobileapp",
	@api.json_clientToken = mob_apikeyliv
	@api.track
end

When(/^I track "(.*?)" product page by using mobileapp api token "(.*?)" with refocde "(.*?)"$/) do |site1, mob_apikeyliv,refcd|
	@api.json_type = "channel"
	@api.json_channel = "mobileapp"
	@api.json_type = 'product'
	@api.json_product = {"refCode" => refcd}
	@api.json_clientToken = mob_apikeyliv
	@api.track
end

When(/^I track "(.*?)" product page rec click by using mobileapp api token "(.*?)" with refocde "(.*?)"$/) do |site1, mob_apikeyliv, refcd|
	@api.json_type = "channel"
	@api.json_channel = "mobileapp"
	@api.json_type = 'product'
	@api.json_product = {"refCode" => refcd}
	@api.json_clientToken = mob_apikeyliv
	@api.track 
	@api.json_channel = "mobileapp"
end

When(/^I track "(.*?)" category page by using mobileapp api token "(.*?)" with category "(.*?)"$/) do |site1, mob_apikeyliv, category|
	@api.json_type = "channel"
	@api.json_channel = "mobileapp"
	@api.json_type = 'category'
	@api.json_category = category
	@api.json_clientToken = mob_apikeyliv
	@api.track 
	@api.json_channel = "mobileapp"
end

When(/^I track "(.*?)" search page by using mobileapp api token "(.*?)"$/) do |site1, mob_apikeyliv|
	@api.json_type = "channel"
	@api.json_channel = "mobileapp"
	@api.json_type = 'searchresults'
    @api.json_searchResults = {"term" => "shirts", "results" => []}
	@api.json_clientToken = mob_apikeyliv
	@api.track 
end



##*******below this point are steps added previuosly***################

Given /^I am using SMART\-API (v1|v1_1|v1_2)?.?to access (.+)$/ do |version, site|
  @api = Peerius::SmartAPI.new(site, version, FigNewton.base_url)
  @site = site    
end

# Given(/^I am using SMART\-API (v1d+)_(\d+) to access livedemoshop$/) do |arg1, arg2|
  # pending # express the regexp above with the code you wish you had
# end

Given /^I am using client token (.+)$/ do |token|
  @api.json_clientToken = token
end

Given(/^I am using uat client token (.+)$/) do |token|
   @api.json_clientToken = token if FigNewton.base_url.include?("uat")
end

Given(/^I am using production client token (.+)$/) do |token|
   @api.json_clientToken = token unless FigNewton.base_url.include?("uat")
end

Given /^I request (.+) abgroup information$/ do |type|
  @api.json_abTestContent= type
end

Given /^I request (.+) rec content$/ do |type|
  @api.json_recContent = type
end
###
Given /^I am on a(.+) category page$/ do |type|
  @api.json_category = type
end
##

Given /^I request (.+) attributes?$/ do |num_attributes|
  case num_attributes
  when "all"
    @api.json_smartRecs = {"showAttributes" => ["*"]} 
  when "one"
    @api.json_smartRecs = {"showAttributes" => ["pricerange"]}   
  end    
end

Given /^I am using session id (.+)$/ do |session|
  @api.session = session
end

Given /^I start a new session$/ do
  @api.session = "new"
end

Given /^I am using customer id (.+)$/ do |cuid|
  @api.cuid = cuid
end

Given(/^I am using username "(.+)" and email "(.+)"$/) do |username, email|
   @api.json_user = {
       "name" => username,
       "email" => email
     }
end

Given(/^the current URI is "(.+)"$/) do |uri|
  @api.json_currentURI = uri
end

Given(/^the previous URI is "(.+)"$/) do |uri|
  @api.json_previousURI = uri
end

When /^I track (?:a|the) home page$/ do
   @api.json_type = 'home'
   @api.track
end
###
  
When(/^I track a home page using version v(\d+)$/) do |version|
	@api = Peerius::SmartAPI.new(version, FigNewton.base_url)
   @api.track
end

When(/^I track a home page using version v(\d+)_(\d+)$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

When(/^I track a "(.*?)" category page$/) do|type|
  @api.json_type = 'category'
   @api.json_category = "ties"
   @api.track
end


When /^I track (?:the|an) "?other"? page$/ do
   @api.json_type = 'other'
   @api.track
end

When /^I track (?:a|the) product page$/ do
   @api.json_type = 'product'
   @api.json_product = {"refCode" => "prod-dw041dpu"}
   @api.track
end
##
When(/^I track the product page for variant info$/) do
   @api.json_type = 'product'
   @api.json_product = {"refCode" => "TS16R05BBLK"}
   @api.track
   end


###
When /^I track (?:the|an) category page$/ do
   @api.json_type = 'category'
   @api.json_category = "ties"
   @api.track
end
When(/^I track a category page$/) do
  @api.json_type = 'category'
  @api.json_category = "ties"
   @api.track
end
###
When(/^I visit "(.*?)" page$/) do |arg1|
  @api.json_type = 'category'
   @api.json_category = "ties"
   @api.track
end

When /^I track (?:a|the) basket page$/ do
  @api.json_type = 'basket'
  items = [
      {"refCode" => "prod-dw041dpu", "qty" => 5, "price" => 50.5},
      {"refCode" => "prod-bl020nav", "qty" => 8, "price" => 52.5},
		]
  @api.json_basket = {"items" => items, "currency" => "GBP"} 
  @api.track
end

When /^I track (?:a|the) checkout page$/ do
    @api.json_type = 'checkout'
    items = [
        {"refCode" => "prod-dw041dpu", "qty" => 5, "price" => 50.5},
        {"refCode" => "prod-bl020nav", "qty" => 8, "price" => 52.5},
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

When /^I track (?:the|an) order page$/ do
    @api.json_type = 'order'
    items = [
        {"refCode" => "prod-dw041dpu", "qty" => 5, "price" => 50.5},
        {"refCode" => "prod-bl020nav", "qty" => 8, "price" => 52.5},
    ]
    @api.json_order = {
        "orderNo" => "API-ABC123-#{Time.now.to_i}",
        "items" => items, 
        "currency" => "GBP",
        "subtotal" => 103,
        "shipping" => 11.75,
        "total" => 114.75
    }
    @api.track
end

When(/^I relogin with username "(.+)" and email "(.+)"$/) do |username, email|
   @api.json_user = {
       "name" => username,
       "email" => email
     }
end

When /^I track (?:the|a) search results page$/ do
   @api.json_type = 'searchresults'
   @api.json_searchResults = {"term" => "handbags", "results" => []}
   @api.track
end 

When /^I track (?:the|a) brand page$/ do
   @api.json_type = 'brand'
   @api.json_brand = "Levis"
   @api.track
end

When /^I track (?:the|an) attribute page$/ do
   @api.json_type = 'attribute'
   @api.json_attribute = {"name" => "style", "value" => "Casual"}
   @api.track
end

When /^I track the same page another (\d+) times$/ do |n|
  n.to_i.times do 
    @api.track
  end
end 

#When /^I supply SMART\-ranking setup info$/ do
 # @api.json_smartRanking = {
  #    "facets" => "category=\"ties\"",
  #    "ordering" => {"orderBy" => "smart"},
  #    "page" => 1,
  #    "itemsPerPage" => 20,  
  #}  
#end




#
# Ordering
#
When /^I (?:purchase|order) a "(.*?)" using the SMART\-API\w*(#?.*)$/ do |item,comment|
  step "I purchase 1 \"#{item}\" using the SMART\-API"
end

When /^I (?:purchase|order) (\d+) "(.*?)" using the SMART\-API\w*(#?.*)$/ do |quantity, item, comment|
    @api.json_type = 'order'
    items = [
        {"refCode" => "#{item}", "qty" => quantity.to_i, "price" => 60.50},
    ]
    @api.json_order = {
        "orderNo" => "API-#{item}-#{Time.now.to_i}",
        "items" => items, 
        "currency" => "GBP",
        "subtotal" => 60.50,
        "shipping" => 1.00,
        "total" => 61.50
    }
    @api.track
end
##
#for variant info--not using for now
# When(/^I order product "(.*?)" with variant info using the SMART\-API$/) do|items|
    # @api.variant_info = items
	# @api.track
# end


When(/^I track a variant "(.*?)" basket page with variant colour "(.*?)" size "(.*?)" using the SMART\-API$/) do|item,col,siz|
#When(/^I track a variant basket page with varinfo$/) do
	@api.json_type = 'basket'
	items = [
	  {"refCode" => "#{item}", "qty" => 3, "variant" => {"colour" =>"#{col}","size" =>"#{siz}"}},
      #{"refCode" => "TS14J29DACB","variant"=>{"colour" => "acid blue","size"=> "6"},"qty" => 3, "price" => 10.5},
      #{"refCode" => "TS16H75UBLK","variant"=>{"colour"=>"black","size"=>"10"}, "qty" => 3, "price" => 52.5},
	   ]
	 @api.json_basket = {"items" => items, "currency" => "GBP"} 
	 @api.track
end

When(/^I order product "(.*?)" with variant colour "(.*?)" size "(.*?)" using the SMART\-API$/) do|item,col,siz|
	@api.json_type = 'order'
    items = [
         {"refCode" => "#{item}", "qty" => 3, "variant" => {"colour" =>"#{col}","size" =>"#{siz}"},"price" => 60.50},
     ]
     @api.json_order = {
         "orderNo" => "API-#{item}-#{Time.now.to_i}",
         "items" => items, 
         "currency" => "GBP",
         "subtotal" => 50.50,
         "shipping" => 1.25,
         "total" => 51.75
     }
     @api.track
end


Then(/^I insert order for a "(.*?)" using the SMART\-API$/) do |quantity, item, comment|
   @api.json_type = 'order'
    items = [
        {"refCode" => "#{item}", "qty" => quantity.to_i, "price" => 50.50},
			]
end


#
# Clicks
#

When /^I track a click for the first SMART\-rec$/ do
    @api.should have_smart_recs
    @api.rec_widgets.count.should >= 1
    @api.total_recs.should >= 0
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
    @current_session = @api.result["session"]
	#$current_session = @api.result["session"]["session"]
	#@current_cuid = @api.result["session"]["cuid"]
    @current_cuid = @api.result["cuid"]
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

Then /^I should get at least (\d+) SMART-content creatives? in the response$/ do |expected_creatives|
    @api.content_creatives.collect{|x| puts "\n#{x["position"]}: #{x["name"]}"} if ENV["apidebug"]
    @api.should have_smart_content
    @api.content_creatives.count.should >= expected_creatives.to_i
end

##

Then(/^one of the variant title should contain "(.*?)"$/) do |expected_colour|
   @api.json_type = 'product'
   @api.json_product = {"refCode" => "TS03B03DBLK"}
   @api.track
   @api.should have_smart_recs
   #@api.rec_widgets.count.should > 0
   #@api.total_recs.should >= var_recs
   @api.total_recs.should >= expected_colour.to_i
end
#
##
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
  #@api.content_creatives.collect{|x| puts "\n{x["position"]}: #{x["name"]}"}
  @api.should have_smart_content
  @api.content_creatives[0]["name"].should include(expected_string)
end

Then /^one of the SMART\-content creative names should contain "(.*?)"$/ do |expected_string|
  #@api.content_creatives.collect{|x| puts "\n#{x["position"]}: #{x["name"]}"}
  @api.should have_smart_content
  
  has_expected_creative = false
  @api.content_creatives.each {|creative|
 puts   has_expected_creative = true if creative["name"].include?(expected_string)
  }
  has_expected_creative.should == true
end
###
Then(/^I visit "(.*?)" page$/) do |arg1|
  @api.json_type = 'category'
   @api.json_category = "ties"
   @api.track
end
###

Then(/^I visit a "(.*?)" using the SMART\-API$/) do |arg1|
  @api.json_type = 'product'
  @api.track
end
###

Then(/^it should get an OK status back$/) do
  @api.json_type = 'category'
 end



#
# A/B Tests
#
Then /^I should see which (.+) abgroup I am serving$/ do |expected_product|
  #has_expected_product = false
  
  #pp @api.result["info"]["abtest"]
  @api.result.should have_key("info")
  @api.result["info"].should have_key("abtest")
  @api.result["info"]["abtest"].should have_at_least(1).product
  
  # Check to see that one of the products is the one we are looking for 
   #pp @api.result["info"]["abtest"]
   @api.result["info"]["abtest"].each {|product| 
   if product.has_key?(expected_product) then
    has_expected_product = true
    
    # # Check that the product has an abgroup defined
     product[expected_product].should have_at_least(1).items
     product[expected_product].each {|config|
      config.should have_key("group")
    }
  end
   }
  
  # has_expected_product.should == true
  
end

Then /^I should see at least (\d+) (.+) ab test configs?$/ do |expected_configs, expected_product|
  # pp @api.result["info"]["abtest"]
   @api.result.should have_key("info")
   @api.result["info"].should have_key("abtest")
   @api.result["info"]["abtest"].should have_at_least(1).product
  
  # # Check to see that one of the products is the one we are looking for 
   @api.result["info"]["abtest"].each {|product| 
   if product.has_key?(expected_product) then
     has_expected_product = true
    
    # # Check that the product has an abgroup defined
    # product[expected_product].should have_at_least(1).items
    # product[expected_product].each {|config|
      # config.should have_key("configs")
      # config["configs"].size.should >= expected_configs.to_i 
    # }
   end
   }
end

#
# Attributes
#
Then /^I should see at least (\d+) attributes? per rec$/ do |expected_attributes|
  @api.should have_smart_recs
  @api.rec_widgets.count.should > 0
  @api.total_recs.should > 0
  @api.rec_widgets[0]["recs"][0].should have_key("attributes")
  @api.rec_widgets[0]["recs"][0]["attributes"].should have_at_least(expected_attributes).entries
end

Then /^I should see exactly (\d+) attributes? per rec$/ do |expected_attributes|
  @api.should have_smart_recs
  @api.rec_widgets.count.should > 0
  @api.total_recs.should > 0
  @api.rec_widgets[0]["recs"][0].should have_key("attributes")
  @api.rec_widgets[0]["recs"][0]["attributes"].should have(expected_attributes).entries
  
end

Then /^I should see no attributes$/ do
  @api.should have_smart_recs
  @api.rec_widgets.count.should > 0
  @api.total_recs.should > 0
  @api.rec_widgets[0]["recs"][0].should_not have_key("attributes")
end

When(/^I post request with GBP ip$/) do
   @api.country_gb
  end
  
When(/^I post request with USA ip$/) do
  @api.country_us
end
   
When(/^I post request with France ip$/) do
  @api.country_fr
end

#Then(/^I use the current "(.+)" and "(.+)"$/) do |cuid, session|
 #@api.cuid
 #@api.session
#end

When(/^I post the home page request with tags$/) do
  @api.home_tags
  @api.track
end


When(/^I post product page request for the gender$/) do
@api.product_gender
@api.track
end

When(/^I post home page request with google search engine as currentURI$/) do
  @api.home_keyword_google_search
  @api.track
end

When(/^I post home page request with google search engine as previousURI$/) do
  @api.home_organic
  @api.track
end

When(/^I post home page request with google search engine as previousURI for PPC$/) do
 @api.home_ppc
 @api.track
end

When(/^I post home page request for source as direct$/) do
  @api.home_source
  @api.track
end

When(/^I post home page request for city$/) do
  @api.home_city
  @api.track
end

