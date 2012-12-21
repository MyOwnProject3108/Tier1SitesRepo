=begin
Then /^I should see a? recommendations?$/ do
  on_page(@site+"::SearchResultsPage") do |page|
    page.smartRecs.count.should > 0
  end    
end

Then /^I should see exactly (\d+) recommendations?$/ do |recsCount|
    on_page(@site+"::SearchResultsPage") do |page|
        page.smartRecs.count.should == recsCount.to_i
    end
end
=end 

Then /^I should see at least (\d+) SMART\-recs?$/ do |recsCount|
    @current_page.smartRecs.count.should >= recsCount.to_i
end

Then /^I should see SMART\-recs$/ do
	@current_page.smartRecs.count.should > 0
end

When /^I click the first SMART\-rec image link$/ do
  @current_page.smartRecsEnabled?.should be_true
  recImageLink = @current_page.smartRecs[0].link_element(:index => 0).when_visible.click
end

When /^I click the first SMART\-rec text link$/ do
  @current_page.smartRecsEnabled?.should be_true
  recTextLink = @current_page.smartRecs[0].link_element(:index => 1).h3_element.link_element.when_visible.click
end