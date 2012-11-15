Given /^I am using the (.+) search engine$/ do |engine|
  @engine = engine.capitalize
  visit @engine+'::SearchPage'
  @current_page.should have_expected_title
end  

Given /^I am on the (.+) (.+)page$/ do |site,page|
    @engine = site.capitalize
    visit site.capitalize+'::'+page.capitalize+'Page'
    @current_page.should have_expected_title
end