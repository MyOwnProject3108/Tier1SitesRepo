

# When /^I supply SMART\-ranking setup info$/ do
  # @current_page.json_smartRanking = {
      # "facets" => "category=\"ties\"",
      # "ordering" => {"orderBy" => "smart"},
      # "page" => 1,
      # "itemsPerPage" => 20,  
  # }  
# end

# When /^I track a click for the first SMART-ranking item$/ do
# end

When(/^I track a Home page$/) do
   @api.json_type = 'home'
   @api.track
end

When /^I supply SMART\-ranking setup info$/ do
  @api.json_smartRanking = {
      "facets" => "category=\"ties\"",
      "ordering" => {"orderBy" => "smart"},
      "page" => 1,
      "itemsPerPage" => 20,  
  }  
end

When(/^I track the configured category page for "(.*?)"$/) do |cat1|
  @api.json_type = 'category'
   @api.json_category = cat1
   @api.track
end

When(/^I track the category page configured$/) do
   @api.json_type = 'category'
   @api.track
end

When /^I supply SMART\-ranking setup with product field for "(.*?)" and facets cat "(.*?)"$/ do |cat1,facetcat|
@api.json_type = 'category'
	   @api.json_category = cat1
	   @api.json_smartProducts =  [ "smartRanking" ]
	   @api.json_smartRanking =  {
	                    "content"      =>      "full",
						"facets"      =>   facetcat,
                        #"facets"        =>      "category= +facetcat+\"" ,
                        "ordering"      =>      { "orderBy"=>"smart" , "currency"=>"GBP" , "sort"=>"asc"},
                        "page"          =>      1,
                        "itemsPerPage"  =>      10
                        }
end

When /^I supply SMART\-ranking setup without smartproduct field for "(.*?)" and facets cat "(.*?)"$/ do |cat1, facetcat|
   @api.json_type = 'category'
	   @api.json_category = cat1
	   #@api.json_smartProducts =  [ "smartRanking" ]
	   @api.json_smartRanking =  {
	                    "content"      =>      "full",
						"facets"      =>   facetcat,
                        #"facets"        =>      "category= +facetcat+\"" ,
                        "ordering"      =>      { "orderBy"=>"smart" , "currency"=>"GBP" , "sort"=>"asc"},
                        "page"          =>      1,
                        "itemsPerPage"  =>      10
                        }
		@api.track
end


When(/^I supply SMART\-ranking setup with product field for "(.*?)" and expect no recs$/) do |cat1|
	   @api.json_type = 'category'
	   @api.json_category = cat1
	   @api.json_smartProducts =  [ "smartRanking" ]
	   @api.json_smartRanking =  {
	                    "content"      =>      "full",
                        "facets"        =>      "category=\"Couples>Days Out\"",
                        "ordering"      =>      { "orderBy"=>"smart" , "currency"=>"GBP" , "sort"=>"asc"},
                        "page"          =>      1,
                        "itemsPerPage"  =>      10
                        }
end

When(/^I supply SMART\-ranking setup with smartrecs only field for "(.*?)" and facets cat "(.*?)"$/) do |cat1, facetcat|
@api.json_type = 'category'
	   @api.json_category = cat1
	   @api.json_smartProducts =  [ "smartRecs" ]
	   @api.json_smartRanking =  {
	                    "content"      =>      "full",
						"facets"      =>   facetcat,
                        "ordering"      =>      { "orderBy"=>"smart" , "currency"=>"GBP" , "sort"=>"asc"},
                        "page"          =>      1,
                        "itemsPerPage"  =>      10
                        }
						@api.track
end
	
When /^I track a click for SMART-ranking item number (\d+)$/ do |product|
    @current_page.should have_smart_ranking_content
    @current_page.ranking_widgets.count.should > 0
    @current_page.total_ranking_items.should > 0
    product_index = product.to_i - 1
    @current_page.ranking_click(product_index)
    @current_page.track    
end
			
 Then(/^one of the SMART\-Ranking listing names should contain "(.*?)"$/) do |cat1|
     #pp @current_page.result
     @current_page.should have_smart_ranking_content
     @current_page.ranking_widgets.count.should > 0
     @current_page.total_ranking_items.should >= expected_items.to_i
 end


Then /^I should see the "(.+)" SMART\-ranking$/ do 
  pending # express the regexp above with the code you wish you had
end

Then /^I should see at least (\d+) items of SMART\-ranking$/ do |expected_items|
  @current_page.smartRanking.count.should == expected_items.to_i
end

Then(/^I should get no items of SMART\-ranking content$/) do
	@api.should_not have_smart_ranking_content
end

Then /^I should see no SMART\-ranking$/ do
  @current_page.smartRankingEnabled?.should be_false 
end


Then /^the first SMART\-Ranking recs title should contain "(.*?)"$/ do |expected_string|
  #@api.content_creatives.collect{|x| puts "\n{x["position"]}: #{x["name"]}"}
  @api.should have_smart_ranking_content
  @api.ranking_recs[0]["title"].should include(expected_string)
  #@api.ranking_widgets[0]["title"].should include(expected_string)
end

Then(/^one of the SMART\-Ranking rec title should contain "(.*?)"$/) do |expected_string|
  @api.Ranking_creatives.collect{|x| puts "\n#{x["position"]}: #{x["name"]}"}
  @api.should have_smart_ranking_content
  has_expected_have_smart_ranking_content= false
  @api.has_expected_creative.each {|creative|
 puts   has_expected_creative = true if creative["name"].include?(expected_string)
  }
  has_expected_creative.should == true
end



##Clicks
When /^I track a click for the first SMART-ranking item$/ do
    @api.should have_smart_ranking_content
    @api.ranking_widgets.count.should >=1
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

When /^I click the first SMART\-ranking creative image$/ do
  @current_page.smartRankingEnabled?.should be_true  
  imageCreative = @current_page.smartRanking[0].link_element(:index => 0).when_visible.click
end

##


#
# A/B Tests
#
#

When(/^I track the configured SMART-Ranking category page for AB group "(.*?)" and facets cat "(.*?)"$/) do |cat1, facetcat|
@api.json_type = 'category'
	   @api.json_category = cat1
	   @api.json_smartProducts =  [ "smartRanking" ]
	   @api.json_smartRanking =  {
	                    "content"      =>      "full",
						"facets"      =>   facetcat,
                        #"facets"        =>      "category= +facetcat+\"" ,
                        "ordering"      =>      { "orderBy"=>"smart" , "currency"=>"GBP" , "sort"=>"asc"},
                        "page"          =>      1,
                        "itemsPerPage"  =>      10
                     }
					 @api.track
end
			
#When /^I track the configured SMART\-Ranking category page for AB group "(.*?)" and facets cat "(.*?)(.*?)"$/ do |cat1, facetcat,arg3|
#~When /^I track the configured Ranking category page for  AB group "(.*?)" and facets cat "(.*?)"$/ do|cat1, facetcat|
#@api.json_type = 'category'
#	   @api.json_smartProducts =  [ "smartRanking" ]
#	   @api.json_smartRanking =  {
#	                    "content"      =>      "full",
#						"facets"      =>   facetcat,
#                        "ordering"      =>      { "orderBy"=>"smart" , "currency"=>"GBP" , "sort"=>"asc"},
#                        "page"          =>      1,
#                        "itemsPerPage"  =>      10
#                        }
#    @api.json_category = cat1
#   @api.track
#   end

Then /^I should see which "(.*?)" AB group is being served$/ do |expected_product|
   #has_expected_product = false
   pp @api.result["info"]["abtest"]
   @api.result.should have_key("info")
   @api.result["info"].should have_key("abtest")
   @api.result["info"]["abtest"].should have_at_least(1).product
  
  # #Check to see that one of the products is the one we are looking for 
   ##pp @api.result["info"]["abtest"]
   @api.result["info"]["abconfig"].each {|product| 
   if product.has_key?(expected_product) then
    has_expected_product = true
    
    # ## Check that the product has an abgroup defined
     product[expected_product].should have_at_least(1).items
     product[expected_product].each {|config|
      config.should have_key("group")
    }
  end
  }
  
 # # has_expected_product.should == true
  
end

#Then /^I should see at least (\d+) (.+) ab test configs?$/ do |expected_configs, expected_product|
  ## pp @api.result["info"]["abtest"]
 #  @api.result.should have_key("info")
  # @api.result["info"].should have_key("abtest")
  # @api.result["info"]["abtest"].should have_at_least(1).product
  
  ## # Check to see that one of the products is the one we are looking for 
   #@api.result["info"]["abtest"].each {|product| 
   #if product.has_key?(expected_product) then
   #  has_expected_product = true
    
    # # Check that the product has an abgroup defined
    # product[expected_product].should have_at_least(1).items
    # product[expected_product].each {|config|
      # config.should have_key("configs")
      # config["configs"].size.should >= expected_configs.to_i 
    # }
   #end
   #}
#end

#