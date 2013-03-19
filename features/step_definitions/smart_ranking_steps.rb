Then /^I should see no SMART\-ranking$/ do
  @current_page.smartRankingEnabled?.should be_false 
end

When /^I click the first SMART\-ranking creative image$/ do
  @current_page.smartRankingEnabled?.should be_true  
  imageCreative = @current_page.smartRanking[0].link_element(:index => 0).when_visible.click
end