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

Then /^all categories should be tracked as Category pages except:$/ do |categories_exclude_list|
 	test_random_category_or_all_category_tracking(categories_exclude_list,true)
end

Then /^each randomly selected category should be tracked as a Category page$/ do
  	test_random_category_or_all_category_tracking(nil,false)
end

Then /^each randomly selected product should be tracked as a Product page using link filter:$/ do |link_filter|
	test_random_product_page_and_add_to_basket_tracking(link_filter,false)
end

When /^one or more random products are added to basket using link filter:$/ do |link_filter|
  	test_random_product_page_and_add_to_basket_tracking(link_filter,true)
end

When /^I auto-generate (.+) using "(.+)" for the (.+) with (.+) "(.+)"$/ do |data_type, value, element, locator, locator_value|
	gen_value = value
	gen_value = eval("autogenerate_"+data_type+'("'+value+'")')
	plog("\tAuto-generated " + data_type.upcase + " => " + gen_value, "magenta")
	@browser.send(element.to_sym, locator.to_sym => locator_value).wd.location_once_scrolled_into_view 
	@browser.send(element.to_sym, locator.to_sym => locator_value).set(gen_value)
end


# This function extracts all the category links using category_menu element specified in the <sitename>.yaml file
# and randomly opens the specified number of categories and then opens the specified number of product pages from each per category 
# Params:
# +link_filter+:: a collection of element identifiers to extract product links from a category page
# +add_to_basket+:: boolean - true if each selected product needs to be added to basket else false
def test_random_product_page_and_add_to_basket_tracking(link_filter,add_to_basket)
    categories = @current_page.category_menu_element.link_elements.collect{|x| [x.attribute('textContent').gsub("\n",''), x.attribute('href')]}
	
	link_filter = link_filter.raw.flatten!
	filter_attrib_name = link_filter[0]
	filter_attrib_val = link_filter[1]
  	
  	num_categories = rand(1..@current_page.get_max_num_of_categories)
  	wait_time_per_category = @current_page.get_wait_time_per_category_page
  	
  	num_products = rand(1..@current_page.get_max_num_of_products)
  	wait_time_per_product = @current_page.get_wait_time_per_product_page
  	
  	show_log = (@current_page.show_log && @current_page.show_log ==  true) ? true : false

  	num_categories.times do |cat_ctr|
  		category = categories[rand(0..categories.length-1)]
  		cat_name = category[0]
		cat_url = category[1]
		 
		@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
		@browser.goto cat_url
		sleep wait_time_per_category
		if @browser.td(:id => 'trackInfo').text.include?("CategoryPage")
			products = @current_page.product_links_element.link_elements
			products = products.reject{|x| x.attribute(filter_attrib_name) != filter_attrib_val} if filter_attrib_name != "ignore"
			products = products.collect{|x| [x.attribute('title'), x.attribute('href')]}
			
			plog("\tCATEGORY #{cat_ctr+1} of #{num_categories} => #{cat_name} :: #{cat_url} :: has #{products.length} products","yellow") if show_log
			num_products.times do |prod_ctr| 
				product = products[rand(0..products.length-1)]
				prod_name = product[0]
				prod_url = product[1]
				prod_name = prod_name[0..30].gsub(/\s\w+\s*$/,'...') if prod_name.length > 30 
				# plog("\tPRODUCT => #{prod_name} :: #{prod_url}","yellow")
				@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
				@browser.goto prod_url #'http://showcase.peerius.com/index.php/clothing/mens/tops/10457232.html'
				sleep wait_time_per_product

				if @browser.td(:id => 'trackInfo').text.include?("ProductPage")
					if(add_to_basket) #if add_to_basket is true add product to basket (for end to end testing)
						plog("\tPRODUCT #{prod_ctr+1} of #{num_products} => #{prod_name} :: #{prod_url}","yellow") if show_log
						if @current_page.get_num_of_product_options > 0
						    x = 1
						    while x <= @current_page.get_num_of_product_options do
								sel_list = eval('@current_page.product_option'+x.to_s+'_element')
								if sel_list.exists?
									option = sel_list.options[rand(1..sel_list.options.length-1)].text
									plog("\tSelected option => #{option} ...","magenta") if show_log
									sel_list.when_present.select option
								end
								x = x+1
							end
						end
						@current_page.add_to_basket_element.when_present.click
						plog("\tADDED TO BASKET => #{prod_name} :: #{prod_url}","yellow") if show_log
						sleep wait_time_per_category # do we need a wait time for basket ? why not use the category wait time?
					else #product page is tracking as expected - nothing more to do
						plog("\tPRODUCT #{prod_ctr+1} of #{num_products} => #{prod_name} :: #{prod_url} - tracked as Product Page","green") 
					end
				else
					plog("\t\t#{prod_name}:\t\t#{prod_url} \t=> tracked as #{@browser.td(:id => 'trackInfo').text} - FAILED","red")
					test_pass = false
				end 
  			end
		else
			plog("\t\t#{failed_cat[0]}:\t\t#{failed_cat[1]} \t=> tracked as #{failed_cat[2]} - FAILED","red")
			test_pass = false
		end   
  	end
    test_pass.should == true if ENV['debugcuke'] 
end

# This function extracts all the category links using category_menu element specified in the <sitename>.yaml file
# Params:
# +categories_to_exclude+:: a collection of categories that need to be excluded (applies only if test_all_categories is set to true)
# +test_all_categories+:: boolean - true if all catgeories need to be tested else false
def test_random_category_or_all_category_tracking(excluded_categories,test_all_categories)
    categories = @current_page.category_menu_element.link_elements.collect{|x| [x.attribute('textContent').gsub("\n",''), x.attribute('href')]}
    categories_to_exclude = nil
    categories_to_exclude = excluded_categories.raw.flatten! if excluded_categories != nil && test_all_categories

	test_pass = true 
	wait_time_per_category = @current_page.get_wait_time_per_category_page
	show_log = (@current_page.show_log && @current_page.show_log ==  true) ? true : false
	  	
	num_categories = categories.length
	tracked_categories = Array.new
	failed_categories = Array.new
	undefined_categories = Array.new
	if(!test_all_categories)
		num_categories = rand(1..@current_page.get_max_num_of_categories)
	end

  	num_categories.times do |cat_ctr|
  		category = categories[cat_ctr] if(test_all_categories)
  		category = categories[rand(0..categories.length-1)] if(!test_all_categories)
  		cat_name = category[0]
		cat_url = category[1]
		catTestResponse = nil
		# plog("Checking CATEGORY #{cat_ctr+1} #{cat_name} : #{cat_url} ...","grey") if show_log
		if (categories_to_exclude!=nil)
			if not categories_to_exclude.include?(cat_name.strip)
				catTestResponse = test_category_page(cat_name,cat_url,wait_time_per_category,show_log)
			else
				plog("\t\tExcluding CATEGORY #{cat_name} : #{cat_url}","grey") if show_log
			end
		else
			catTestResponse = test_category_page(cat_name,cat_url,wait_time_per_category,show_log)
		end
		if catTestResponse != nil
			tracked_categories << catTestResponse if catTestResponse.include?("SUCCESS")
			undefined_categories << catTestResponse if catTestResponse.include?("UNDEFINED")
			failed_categories << catTestResponse if catTestResponse.include?("FAILED")
		end
	end
	
	if tracked_categories.length>0
		plog("TRACKED CATEGORY PAGES:","green") if show_log
		# list all tracked categories
		tracked_categories.each do |tcat|
			tracked_cat = tcat.split("|")
			plog("\t#{tracked_cat[0]}:\t#{tracked_cat[1]}","green") if show_log
		end
		test_pass = true
	end 
	
	if (failed_categories.length>0 || undefined_categories.length>0)
		if failed_categories.length>0
			plog("FAILED CATEGORY PAGES:","red")
			# list all failed categories
			failed_categories.each do |fcat|
				failed_cat = fcat.split("|")
				plog("\t#{failed_cat[0]}:\t#{failed_cat[1]} \t=> tracked as #{failed_cat[2]} Page - FAILED","red")
			end
			test_pass = false
		end 
		if undefined_categories.length>0
			plog("UNDEFINED CATEGORY PAGES:","magenta")
			# list all undefined categories
			undefined_categories.each do |ucat|
				undef_cat = ucat.split("|")
				plog("\t#{undef_cat[0]}:\t#{undef_cat[1]} \t=> NO TRACK INFO FOUND - FAILED","magenta")
			end
			test_pass = false
		end
	else
		test_pass.should == true	
	end
	plog("=========================================================================","grey")
	plog("\tTOTAL TESTED\t=> #{num_categories} category page" + (num_categories>1?"s":""),"yellow")
	plog("\tTEST PASSED \t=> #{tracked_categories.length} category page" + (tracked_categories.length>1?"s":""),"green") if tracked_categories.length>0
	plog("\tTEST FAILED \t=> #{failed_categories.length} category page" + (failed_categories.length>1?"s":""),"red") if failed_categories.length>0
	plog("\tNO TRACKINFO\t=> #{undefined_categories.length} page"+ (undefined_categories.length>1?"s":""),"magenta") if undefined_categories.length>0
	plog("\tEXCLUDED    \t=> #{excluded_categories.raw.length} category pages","grey") if test_all_categories 
	plog("=========================================================================","grey")
end

# This function tests if a category page is tracking correctly. 
# Returns nil if pag is tracked correctly. If not, returns the page info as a pipe delimited string so that failed and undefined category pages can be identified.
def test_category_page(cat_name,cat_url,wait_time,show_log)
	testResponse = nil
	@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
	@browser.goto cat_url
	sleep wait_time
	cat_name = cat_name.length > 20 ? cat_name[0..17].gsub(/\s\w+\s*$/,'...') : cat_name
	if @browser.td(:id => 'trackInfo').exists?
		page_type = @browser.td(:id => 'trackInfo').text[/For(.*?)Page/m, 1]
		if page_type.include?("Category")
			testResponse = "#{cat_name}|#{cat_url}|SUCCESS"
			# plog("#{cat_name} : \t#{cat_url}\t=> tracked as Category page with unique Id [#{@browser.td(:id => 'categoryUniqueId').text}]","green") if show_log
		else
			testResponse = "#{cat_name}|#{cat_url}|#{page_type}"
		end   
	else
		testResponse = "#{cat_name}|#{cat_url}|<<UNDEFINED>>"
	end
	@browser.back
	return testResponse
end


#Then /^the debug info should show at least (\d+) SMART\-content$/ do |expected_content|
 # @current_page.debug_content.should have_at_least(expected_content).entries
#end

def autogenerate_firstname(seed_value)
	prefix = seed_value
	rand_value = rand(1..999999).to_s
    return prefix+rand_value
end

def autogenerate_lastname(seed_value)
	prefix = seed_value
	rand_value = rand(1..999999).to_s
    return prefix+rand_value
end

def autogenerate_email(seed_value)
	prefix = seed_value.partition('@').first
	domain = seed_value.partition('@').last
	rand_value = rand(1..999999).to_s
    return prefix+rand_value+'@'+domain
end