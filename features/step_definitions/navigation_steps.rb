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
    if @current_page.respond_to? "has_expected_title?" then
        @current_page.should have_expected_title
    end
    #@browser.cookies.add 'peerius_pass_debug', '1'
    #visit @site+'::'+page_class_name+'Page'
end

When /^I go to the (.+)page$/ do |page|   
    # Turn the page description into a page classname (e.g. search page -> SearchPage)
    page_class_name = page.split.collect!{|x| x.capitalize}.join
    
    visit @site+'::'+page_class_name+'Page'
    if @current_page.respond_to? "has_expected_title?" then
        @current_page.should have_expected_title
    end
end

When /^I click login$/ do
	@current_page.login_link_element.click  
end

When /^I login as "(.+)" using password "(.+)"$/ do |username, password|
   on_page(@site+'::LoginPage') do |page|
    		page.username = username
    		page.password = password
        page.login_submit_element.click   
    end 
end

Then /^I should end up on (?:the|a|an) (.+)page$/ do |page|
    # Turn the page description into a page classname (e.g. search page -> SearchPage)
    page_class_name = page.split.collect!{|x| x.capitalize}.join
    
    on_page(@site+'::'+page_class_name+'Page') do |page|
        page.should be_valid if page.respond_to? "valid?"
        @current_page.should be_tracked_as "#{page_class_name}Page" 
    end
end

Given /^I use the SPR key$/ do
  @current_page.add_SPR
end



