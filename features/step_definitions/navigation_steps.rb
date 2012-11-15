Given /^I am using the (.+) search engine$/ do |engine|
  @engine = engine.capitalize
  visit @engine+'::SearchPage'
  @current_page.should have_expected_title
end  

Given /^I am on the (.+) (.+)page$/ do |site,page|
    @site = site.capitalize
    visit @site+'::'+page.capitalize+'Page'
    @current_page.should have_expected_title
end

Then /^I should see a category page$/ do
  on_page(@site+"::CategoryPage").is_categorypage?.should == true
end