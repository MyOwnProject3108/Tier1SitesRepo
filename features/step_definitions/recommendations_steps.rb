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

Then /^I should see at least (\d+) recommendations?$/ do |recsCount|
    on_page(@site+"::SearchResultsPage") do |page|
        page.smartRecs.count.should >= recsCount.to_i
    end
end

Then /^I should see SMART\-recs$/ do
	@current_page.smartRecs.count.should > 0
end