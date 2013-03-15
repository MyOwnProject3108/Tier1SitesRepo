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

Then /^all categories should be tracked as Category pages except:$/ do |exclude_list|
    categories = @current_page.category_menu_element.link_elements.collect{|x| [x.attribute('textContent'), x.attribute('href')]}
    exclude_list = exclude_list.raw.flatten!
    test_pass = true 
    
    categories.each do |category|
      name = category[0]
      link = category[1]
      pp "#{name}" if ENV['debugcategory']
      pp "#{link}" if ENV['debugcategory']
      if not exclude_list.include?(name.strip)
        @browser.goto link
        sleep 2
        if @browser.td(:id => 'trackInfo').text.include?("CategoryPage")
          puts "#{name} - PASS"
        else
          puts "#{name} - #{@browser.td(:id => 'trackInfo').text} - FAIL"
          test_pass = false
        end   
        @browser.back
      end
      test_pass.should == true if ENV['debugcategory']
    end
    
    test_pass.should == true
end


