Then /^it should be tracked as (?:the|a|an) (.+)page$/ do |page|  
  # Turn the page description into a page classname (e.g. search page -> SearchPage)
  page_class_name = page.split.collect!{|x| x.capitalize}.join
  @current_page.should be_tracked_as page_class_name + ((page.include? "Order") ? "" : "Page")
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
    puts "#{name}" if ENV['debugcuke']
    puts "#{link}" if ENV['debugcuke']
    if not exclude_list.include?(name.strip)
      @browser.cookies.add 'peerius_pass_peeriusdebug', '1'
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
    test_pass.should == true if ENV['debugcuke']
  end
  
  test_pass.should == true
end

Then /^a random category should be tracked as Category page$/ do
  	categories = @current_page.category_menu_element.link_elements.collect{|x| [x.attribute('textContent').gsub("\n",''), x.attribute('href')]}
  	category = categories[rand(0..categories.length-1)]
  	test_pass = true 
    cat_name = category[0]
	cat_url = category[1]
	#pp "#{@current_page}" if ENV['debugcuke']
	#pp "#{link}" if ENV['debugcuke']
	puts "Selected category is #{cat_name} :: #{cat_url}" 
	@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
	@browser.goto cat_url
	sleep 2
	if @browser.td(:id => 'trackInfo').text.include?("CategoryPage")
		puts "#{cat_name} - PASS"
	else
		puts "#{cat_name} - #{@browser.td(:id => 'trackInfo').text} - FAIL"
		test_pass = false
	end   
end

Then /^a random product should be tracked as Product page using link filter:$/ do |link_filter|
  	categories = @current_page.category_menu_element.link_elements.collect{|x| [x.attribute('textContent').gsub("\n",''), x.attribute('href')]}
	category = categories[rand(0..categories.length-1)]
	cat_name = category[0]
	cat_url = category[1]
	puts "Selected category is #{cat_name} :: #{cat_url}" if ENV['debugcuke']
	@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
	@browser.goto cat_url
	sleep 2
	if @browser.td(:id => 'trackInfo').text.include?("CategoryPage")
		link_filter = link_filter.raw.flatten!
		attrib_name = link_filter[0]
		attrib_val = link_filter[1]
		products = @current_page.product_links_element.link_elements
				   .reject{|x| x.attribute(attrib_name) != attrib_val}
				   .collect{|x| [x.attribute('title'), x.attribute('href')]}

		puts "Category #{cat_name} has #{products.length} products" if ENV['debugcuke']

		product = products[rand(0..products.length-1)]
		prod_name = product[0]
		prod_url = product[1]
		puts "Selected product is #{prod_name} :: #{prod_url}" if ENV['debugcuke']
		@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
		@browser.goto prod_url
		sleep 2
		if @browser.td(:id => 'trackInfo').text.include?("ProductPage")
			puts "#{prod_name} - PASS" if ENV['debugcuke']
		else
			puts "#{prod_name} - #{@browser.td(:id => 'trackInfo').text} - FAIL"
			test_pass = false
		end  
	else
		puts "#{cat_name} - #{@browser.td(:id => 'trackInfo').text} - FAIL"
		test_pass = false
	end   
    test_pass.should == true if ENV['debugcuke'] 
 
end


Then /^one or more random products should be added to basket using link filter:$/ do |link_filter|
  	categories = @current_page.category_menu_element.link_elements.collect{|x| [x.attribute('textContent').gsub("\n",''), x.attribute('href')]}
	link_filter = link_filter.raw.flatten!
	filter_attrib_name = link_filter[0]
	filter_attrib_val = link_filter[1]
  	num_categories = rand(1..@current_page.get_max_num_of_categories)
  	x = 1
  	while x <= num_categories do
  		category = categories[rand(0..categories.length-1)]
  		cat_name = category[0]
		cat_url = category[1]
		 
		@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
		@browser.goto cat_url
		sleep 2
		if @browser.td(:id => 'trackInfo').text.include?("CategoryPage")

			products = @current_page.product_links_element.link_elements
					   .reject{|x| x.attribute(filter_attrib_name) != filter_attrib_val}
					   .collect{|x| [x.attribute('title'), x.attribute('href')]}
			puts "CATEGORY #{x} of #{num_categories} => #{cat_name} :: #{cat_url} :: has #{products.length} products"

			product = products[rand(0..products.length-1)]
			prod_name = product[0]
			prod_url = product[1]
			puts "\tPRODUCT => #{prod_name} :: #{prod_url}"
			@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
			@browser.goto prod_url
			sleep 2
			
			if @browser.td(:id => 'trackInfo').text.include?("ProductPage")
				@current_page.add_to_basket_element.when_present.click
				puts "\t  ADDED TO BASKET => #{prod_name} :: #{prod_url}" #if ENV['debugcuke']
				sleep 2
			else
				puts "#{prod_name} - #{@browser.td(:id => 'trackInfo').text} - FAIL"
				test_pass = false
			end  
		else
			puts "#{cat_name} - #{@browser.td(:id => 'trackInfo').text} - FAIL"
			test_pass = false
		end   
		x = x + 1
  	end
    test_pass.should == true if ENV['debugcuke'] 
 
end

#Then /^the debug info should show at least (\d+) SMART\-content$/ do |expected_content|
 # @current_page.debug_content.should have_at_least(expected_content).entries
#end

