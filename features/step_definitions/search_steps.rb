Given /^I am using the (.+) search engine$/ do |engine|
  @engine = engine.capitalize
  visit @engine+'::SearchPage'
  @current_page.should have_expected_title
end

When /^I search for a? ?"([^"]*)"$/ do |term|
	# if custom search js code is defined for a site then execute the code
	if @current_page.get_custom_search_js != nil
		@browser.execute_script(@current_page.get_custom_search_js)
	end
	@current_page.search_field = term
	# if search_button is defined in yaml then use it to click else use the enter key to submit the search
	if @current_page.search_button_element != nil
		@current_page.search_button_element.click
	else
		@current_page.search_field_element.respond_to?(:send_keys) ? @current_page.search_field_element.send_keys(:enter) : @browser.send_keys(:enter)
	end
end

When /^I select the (.+) homepage from the results$/ do |homepage|
  on @engine+'::ResultsPage' do |page|
    page.should contain_result ho mepage.downcase   
  end
end
