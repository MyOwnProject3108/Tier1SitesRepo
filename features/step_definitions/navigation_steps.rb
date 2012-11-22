Given /^I am using the (.+) search engine$/ do |engine|
  @engine = engine.capitalize
  visit @engine+'::SearchPage'
  @current_page.should have_expected_title
end  

Given /^I am on the (.+) (.+)page$/ do |site, page|
    @site = site.capitalize
     
    # Turn the page description into a page classname (e.g. search page -> SearchPage)
    page_class_name = page.split.collect!{|x| x.capitalize}.join
    
    visit @site+'::'+page_class_name+'Page'
    @current_page.should have_expected_title
end

Then /^I should end up on (?:the|a|an) (.+)page$/ do |page|
    # Turn the page description into a page classname (e.g. search page -> SearchPage)
    page_class_name = page.split.collect!{|x| x.capitalize}.join
    
    on_page(@site+'::'+page_class_name+'Page') do |page|
        page.should be_valid 
    end
end