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
                        "facets"        =>      "category= +facetcat \ ",
                        "ordering"      =>      { "orderBy"=>"price" , "currency"=>"GBP" , "sort"=>"desc"},
                        "page"          =>      1,
                        "itemsPerPage"  =>      10
                        }
end



When(/^I supply SMART\-ranking setup with product field for "(.*?)" and expect no recs$/) do |cat1|
	   @api.json_type = 'category'
	   @api.json_category = cat1
	   @api.json_smartProducts =  [ "smartRanking" ]
	   @api.json_smartRanking =  {
	                    "content"      =>      "full",
                        "facets"        =>      "category=\"Couples>Days Out\"",
                        "ordering"      =>      { "orderBy"=>"price" , "currency"=>"GBP" , "sort"=>"desc"},
                        "page"          =>      1,
                        "itemsPerPage"  =>      10
                        }
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

When /^I click the first SMART\-ranking creative image$/ do
  @current_page.smartRankingEnabled?.should be_true  
  imageCreative = @current_page.smartRanking[0].link_element(:index => 0).when_visible.click
end