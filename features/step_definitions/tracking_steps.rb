Then /^it should be tracked as (?:the|a|an) (.+)page$/ do |page|
  # Turn the page description into a page classname (e.g. search page -> SearchPage)
  page_class_name = page.split.collect!{|x| x.capitalize}.join
  @current_page.should be_tracked_as page_class_name+"Page"
end

Then /^the first widget name should be "(.+)"$/ do |debug_widget_name|
 @current_page.debug_widget_name.should include(debug_widget_name)
end

Then /^the debug info should show at least (\d+) SMART\-recs?$/ do |expected_recs|
    @current_page.debug_recs.should have_at_least(expected_recs).entries  
end

Then /^the debug info should show no SMART\-recs?$/ do
    @current_page.debug_recs.should have(0).entries  
end

Then /^all categories should be tracked as Category pages$/ do
    categories = @current_page.category_menu_element.link_elements.collect{|x| x.href}
    categories.each do |category_link|
        pp category_link
        if category_link != "http://www.ctshirts.co.uk/default.aspx?q=peerius|||||||||||||||"
          @browser.goto category_link
          sleep 2
          @browser.td(:id => 'trackInfo').text.should include("CategoryPage")
          @browser.back
        end
    end
end


