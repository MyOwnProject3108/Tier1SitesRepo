Then /^it should be tracked as (?:the|a|an) (.+)page$/ do |page|
  # Turn the page description into a page classname (e.g. search page -> SearchPage)
  page_class_name = page.split.collect!{|x| x.capitalize}.join
  
  on_page(@site+'::'+page_class_name+'Page') do |page|
    page.should be_tracked_as page_class_name+"Page"
  end
end

Then /^the debug info should show at least (\d+) SMART\-recs?$/ do |expected_recs|
    @current_page.debug_recs.should have_at_least(expected_recs).entries  
end
