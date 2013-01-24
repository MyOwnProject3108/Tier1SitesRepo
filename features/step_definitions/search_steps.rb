Given /^I am using the (.+) search engine$/ do |engine|
  @engine = engine.capitalize
  visit @engine+'::SearchPage'
  @current_page.should have_expected_title
end

When /^I search for a? ?"([^"]*)"$/ do |term|
	@current_page.search = term
	@current_page.search_text_field.respond_to?(:send_keys) ? @current_page.search_text_field.send_keys(:enter) : @browser.send_keys('{ENTER}')
end

When /^I select the (.+) homepage from the results$/ do |homepage|
  on @engine+'::ResultsPage' do |page|
    page.should contain_result homepage.downcase   
  end
end
