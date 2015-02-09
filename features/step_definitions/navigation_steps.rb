Given /^I am using the (.+) search engine$/ do |engine|
  @engine = engine.capitalize
  visit @engine+'::SearchPage'
  @current_page.should have_expected_title
  
  # Make sure the debug data is showing
  #@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
  #@browser.refresh
end  


Given(/^the site can take up to (\d+) seconds to load each page\.$/) do |timeout|
	@browser.driver.manage.timeouts.implicit_wait = timeout 	
end

Given /^I am on the (.+) (.+)page$/ do |site, page|
    @site = site.capitalize
     
    # Turn the page description into a page classname (e.g. search page -> SearchPage)
    page_class_name = page.split.collect!{|x| x.capitalize}.join
    @browser.driver.manage.timeouts.implicit_wait = 5  
    visit @site+'::'+page_class_name+'Page'
   if @current_page.get_site_custom_js != nil
	 @browser.execute_script(@current_page.get_site_custom_js)
		plog("EXECUTED FOR "+ @site+'::'+page_class_name+'Page', "magenta")
      end	
	    if @current_page.respond_to? "has_expected_title?" then
        @current_page.should have_expected_title
    end
    
	# Show the user agent string
	#pp @browser.html[/<textarea.+>([^<]+)<\/textarea>/,1]
	#pp @browser.html

	# Make sure the debug data is showing
	#@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
	#@browser.refresh
end

When /^I go to the (.+)page$/ do |page|   
    # Turn the page description into a page classname (e.g. search page -> SearchPage)
    page_class_name = page.split.collect!{|x| x.capitalize}.join
    
    visit @site+'::'+page_class_name+'Page'
   begin
	if @current_page.get_site_custom_js != nil
  	@browser.execute_script(@current_page.get_site_custom_js)
	plog("EXECUTED FOR "+ @site+'::'+page_class_name+'Page', "magenta")
   end
  rescue Exception => e
  puts("Encountered get_custom_js Error")
	end
    if @current_page.respond_to? "has_expected_title?" then
        @current_page.should have_expected_title
    end

  # Make sure the debug data is showing
  #@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
  #@browser.refresh
end

When /^I click login$/ do
	# Workaround for ghostdriver issue 202
  # https://github.com/detro/ghostdriver/issues/202
  link = @current_page.login_link_element.attribute('href')
  @browser.cookies.add 'peerius_pass_peeriusdebug', '1'
  @browser.goto link 
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

And /^I am in an AB group$/ do
	@current_page.add_AB_group(@current_page.get_ab_group)
end

