Then /^it should be tracked as (?:the|a|an) (.+)page$/ do |page|
  # Turn the page description into a page classname (e.g. search page -> SearchPage)
  page_class_name = page.split.collect!{|x| x.capitalize}.join
  
  @current_page.should be_tracked_as page_class_name+"Page"
end

Then /^all categories should be tracked as Category pages$/ do
    categories = @current_page.categories
    categories.each do |category|
        pp category
        # @browser.goto category
        on_page(@site+"::CategoryPage") do |page|
            page.should be_tracked_as page_class_name+"Page"
        end
    end
end