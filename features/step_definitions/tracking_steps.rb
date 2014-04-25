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

When /^I add one or more random products to basket using link filter:$/ do |link_filter|
  	test_random_product_page_and_add_to_basket_tracking(link_filter,true)
end

When /^I visit the top navigation page with index:$/ do |page_index|
   	visit_nav_page(page_index, true)
end

When /^I visit the first top navigation page$/ do 
   	visit_nav_page(0, false)
end

When /^I auto-generate (.+) using "(.+)" for the (.+) with (.+) "(.+)"$/ do |data_type, value, element, locator, locator_value|
	gen_value = value
	gen_value = eval("autogenerate_"+data_type+'("'+value+'")')
	plog("\tAuto-generated " + data_type.upcase + " => " + gen_value, "magenta")
	@browser.send(element.to_sym, locator.to_sym => locator_value).wd.location_once_scrolled_into_view 
	@browser.send(element.to_sym, locator.to_sym => locator_value).set(gen_value)
end

def visit_nav_page(page_index,is_table_data)
    show_log = (@current_page.show_log && @current_page.show_log ==  true) ? true : false
    nav_elements = @current_page.category_menu_preselect_element.link_elements.collect{|x| [x.attribute('textContent').gsub("\n",''), x.attribute('href')]}
    #nav_element = nav_elements.flatten!
    nav_link = nav_elements[page_index.raw.flatten![0].to_i] if is_table_data
    nav_link = nav_elements[page_index] if !is_table_data
    plog("\tNO CAT LINKS on Home Page - USING nav link => #{nav_link[0]} :: #{nav_link[1]}", "yellow") if show_log
	@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
	@browser.goto nav_link[1] 
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
  	ignore_cat_tracked_as_other_page = (@current_page.ignore_cat_tracked_as_other_page && @current_page.ignore_cat_tracked_as_other_page ==  true) ? true : false
	cat_ctr = 1
  	while cat_ctr <= num_categories
  		category = categories[rand(0..categories.length-1)]
  		cat_name = category[0]
		cat_url = category[1] #"http://www.cottontraders.com/menswear/mens-swimwear-/icat/mensswimwear" #
		exclude_cat = false
		if (@current_page.get_categories_to_exclude_list.length>0)
			cats_to_exclude = @current_page.get_categories_to_exclude_list*","
			exclude_cat = true if cats_to_exclude.include?(cat_name.strip)
		end
		
		if !exclude_cat
			catTestResponse = nil
			# plog("Checking CATEGORY #{cat_ctr} #{cat_name} : #{cat_url} ...","grey") if show_log
			catTestResponse = test_category_page(cat_name,cat_url,wait_time_per_category,show_log)
			if catTestResponse != nil && catTestResponse.include?("SUCCESS")
				products = @current_page.product_links_element.link_elements
				# plog("\t#{products.length} products","yellow") if show_log
				
				# Reject links that DO NOT have the attribute with name <filter_attrib_name> with matching value <filter_attrib_val>
				products = products.reject{|x| x.attribute(filter_attrib_name) != filter_attrib_val} if filter_attrib_name != "ignore" && filter_attrib_val != "*" && !filter_attrib_val.include?('%')
				# Reject links that DO have the attribute with name <filter_attrib_name> with matching value <filter_attrib_val>  Added by fayaz
#				products = products.reject{|x| x.attribute(filter_attrib_name) = filter_attrib_val} if filter_attrib_name != "ignore" && filter_attrib_val != "*" && !filter_attrib_val.include?('%') && !filter_attrib_val.include?('%')
				# Reject links that DO NOT have the attribute with name <filter_attrib_name> where the attribute value <filter_attrib_val> is indeterminate or random
				products = products.reject{|x| !x.attribute(filter_attrib_name) } if filter_attrib_val == "*"
				# Reject links that DO NOT have the attribute with name <filter_attrib_name> with partially matching value <filter_attrib_val>
				products = products.reject{|x| !x.attribute(filter_attrib_name).include?(filter_attrib_val.gsub("%",'')) } if filter_attrib_val.include?('%')
				# Collect all links that have an attributes "title" and "href"
				products = products.collect{|x| [x.attribute('title'), x.attribute('href')]}
				
				if products.length == 0
					fail(PeeriusConfigurationError.new("FAILED :: NO PRODUCTS were found on category page #{cat_name}(#{cat_url}) using link filter => #{link_filter}"))
					break
				end
				
				plog("\tCATEGORY #{cat_ctr} of #{num_categories} => #{cat_name} :: #{cat_url} :: has #{products.length} products","yellow") if show_log
				num_products.times do |prod_ctr| 
					product = products[rand(0..products.length-1)]
					prod_name = product[0]
					prod_url = product[1]
					prod_name = prod_name[0..30].gsub(/\s\w+\s*$/,'...') if prod_name.length > 30 
					# plog("\tPRODUCT => #{prod_name} :: #{prod_url}","yellow")
					@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
					@browser.goto prod_url #'http://showcase.peerius.com/index.php/clothing/mens/tops/10457232.html' "http://www.cottontraders.com/womens-shirts+blouses/34-sleeve-spot-print-blouse/invt/ab10892" #
					sleep wait_time_per_product

					if @browser.td(:id => 'trackInfo').text.include?("ProductPage")
						if(add_to_basket) #if add_to_basket is true add product to basket (for end to end testing)
							plog("\tPRODUCT #{prod_ctr+1} of #{num_products} => #{prod_name} :: #{prod_url}","yellow") if show_log
							if @current_page.get_num_of_product_options > 0
								select_product_options(show_log)
							end
							@current_page.add_to_basket_element.when_present.click
							plog("\tADDED TO BASKET => #{prod_name} :: #{prod_url}","yellow") if show_log
							sleep wait_time_per_category # do we need a wait time for basket ? why not use the category wait time?
						else #product page is tracking as expected - nothing more to do
							plog("\tPRODUCT #{prod_ctr+1} of #{num_products} => #{prod_name} :: #{prod_url} - tracked as Product Page","green") 
						end
					else
						plog("\t\t#{prod_name}:\t\t#{prod_url} \t=> tracked as #{@browser.td(:id => 'trackInfo').text.upcase} - FAILED","red")
						test_pass = false
					end 
				end
				cat_ctr = cat_ctr + 1
			else
				if !ignore_cat_tracked_as_other_page
					plog("\t\t#{cat_name}:\t\t#{cat_url} \t=> tracked as " + catTestResponse.split("|")[2].upcase + " page - FAILED","red")
					cat_ctr = cat_ctr + 1 
					test_pass = false
				else
					plog("\tIGNORING " + catTestResponse.split("|")[2].upcase + " PAGE " + "#{cat_name} (#{cat_url})" ,"grey")
				end
			end 
			
		else
			plog("\tIGNORING EXCLUDED CATEGORY #{cat_name} : #{cat_url}","grey") if show_log
		end
  	end
    test_pass.should == true if ENV['debugcuke'] 
end

def select_product_options(show_log)
	x = 1
	while x <= @current_page.get_num_of_product_options do
		product_options = eval('@current_page.product_option'+x.to_s+'_element')
		if product_options.exists?
			product_options_preselect = eval('@current_page.product_options_preselect'+x.to_s+'_element') if @current_page.has_product_options_preselect
			# plog("LIST IS A #{product_options.class} with parent #{product_options.parent} ","blue") if show_log
	
			case 
			when product_options.is_a?(PageObject::Elements::SelectList)
				#option = product_options.options[rand(1..product_options.options.length-1)].text 
				opt_index = rand(1..product_options.options.length-1)
				plog("\tSelected option => #{opt_index} ...","magenta") if show_log
				product_options_preselect.click if @current_page.has_product_options_preselect
				#product_options.when_present.select option 
				product_options.option(:index => opt_index).when_present.select 
			when product_options.is_a?(PageObject::Elements::Table) #cottontraders
				prod_links = product_options.link_elements 
				option = prod_links[rand(0..prod_links.length-1)] 
				option.click
			when product_options.is_a?(PageObject::Elements::UnorderedList) #superdry
				option = product_options.lis[rand(1..product_options.lis.length-1)] 			
				product_options_preselect.click if @current_page.has_product_options_preselect
				plog("\tPre-selected => #{product_options_preselect.html}","magenta") if show_log
				plog("\tSelected option => #{option.html.scan(/<span[^>]*?>(.*?)<\/span>/i).flatten.join(" ")}","magenta") if show_log
				option.click 
			when product_options.is_a?(PageObject::Elements::Image)
				plog("\tSelected option => #{product_options} ...","magenta") if show_log
				product_options.click
			else
				# do nothing
			end
	 	end
		x = x+1
	end
end

# This function extracts all the category links using category_menu element specified in the <sitename>.yaml file
# Params:
# +categories_to_exclude+:: a collection of categories that need to be excluded (applies only if test_all_categories is set to true)
# +test_all_categories+:: boolean - true if all catgeories need to be tested else false
def test_random_category_or_all_category_tracking(excluded_categories,test_all_categories)
    show_log = (@current_page.show_log && @current_page.show_log ==  true) ? true : false

    categories = @current_page.category_menu_element.link_elements.collect{|x| [x.attribute('textContent').gsub("\n",''), x.attribute('href')]}
    categories = categories.reject{|x| x[1]==nil }
    categories_to_exclude = nil
    categories_to_exclude = excluded_categories.raw.flatten! if excluded_categories != nil && test_all_categories

	test_pass = true 
	wait_time_per_category = @current_page.get_wait_time_per_category_page
	ignore_cat_tracked_as_other_page = (@current_page.ignore_cat_tracked_as_other_page && @current_page.ignore_cat_tracked_as_other_page ==  true) ? true : false
	
	tracked_categories = Array.new
	failed_categories = Array.new
	undefined_categories = Array.new
	ignored_categories = Array.new
	
	num_categories = categories.length if test_all_categories
	num_categories = rand(1..@current_page.get_max_num_of_categories) if !test_all_categories
	
	cat_ctr = 0
  	while cat_ctr < num_categories  
  		category = categories[cat_ctr] if(test_all_categories)
		category = categories[rand(0..categories.length-1)] if !test_all_categories
		cat_name = category[0]
		cat_url = category[1]
		
 		exclude_cat = false
		if (@current_page.get_categories_to_exclude_list.length>0)
			cats_to_exclude = @current_page.get_categories_to_exclude_list*","
			exclude_cat = true if cats_to_exclude.include?(cat_name.strip)
		end
		
		if !exclude_cat
			catTestResponse = nil
			plog("Checking CATEGORY #{cat_ctr+1} #{cat_name} : #{cat_url} ...","grey") if show_log && ENV["DEBUG"]
			catTestResponse = test_category_page(cat_name,cat_url,wait_time_per_category,show_log)
			
			if catTestResponse.include?("Other") && ignore_cat_tracked_as_other_page
				plog("\tIGNORING " + catTestResponse.split("|")[2].upcase + " PAGE " + "#{cat_name} (#{cat_url})" ,"grey") if show_log && ENV["DEBUG"]
			end
			tracked_categories << catTestResponse if catTestResponse.include?("SUCCESS")
			undefined_categories << catTestResponse if catTestResponse.include?("UNDEFINED")
			failed_categories << catTestResponse if catTestResponse.include?("Other") && !ignore_cat_tracked_as_other_page
			ignored_categories << catTestResponse if catTestResponse.include?("Other") && ignore_cat_tracked_as_other_page
			
		else
			plog("\tIGNORING EXCLUDED CATEGORY #{cat_name} : #{cat_url}","grey") if show_log && ENV["DEBUG"]
		end
		cat_ctr = cat_ctr + 1 if test_all_categories 
		if !test_all_categories
		  cat_ctr = cat_ctr + 1 if !(catTestResponse.include?("Other") && ignore_cat_tracked_as_other_page)
		end
		#@browser.back
	end
	
	if tracked_categories.length>0
		show_tested_categories(tracked_categories,"TRACKED",show_log)
		test_pass = true
	end 
	show_tested_categories(ignored_categories,"IGNORED",show_log) if ignored_categories.length>0
	
	if (failed_categories.length>0 || undefined_categories.length>0  || ignored_categories.length>0)
		show_tested_categories(failed_categories,"FAILED",show_log) if failed_categories.length>0
		show_tested_categories(undefined_categories,"UNDEFINED",show_log) if undefined_categories.length>0
		test_pass = false
	else
		test_pass.should == true	
	end
	plog("=========================================================================","grey")
	plog("\tTOTAL TESTED\t=> #{num_categories} category page" + (num_categories>1?"s":""),"yellow")
	plog("\tTEST PASSED \t=> #{tracked_categories.length} category page" + (tracked_categories.length>1?"s":""),"green") if tracked_categories.length>0
	plog("\tTEST FAILED \t=> #{failed_categories.length} category page" + (failed_categories.length>1?"s":""),"red") if failed_categories.length>0
	plog("\tNO TRACKINFO\t=> #{undefined_categories.length} page"+ (undefined_categories.length>1?"s":""),"magenta") if undefined_categories.length>0
	plog("\tIGNORED \t=> #{ignored_categories.length} page"+ (ignored_categories.length>1?"s":""),"grey") if ignored_categories.length>0 && ignore_cat_tracked_as_other_page
	plog("\tEXCLUDED    \t=> #{excluded_categories.raw.length} category pages","grey") if test_all_categories 
	plog("=========================================================================","grey")
	@browser.cookies.clear
end

# This function tests if a category page is tracking correctly. 
# Returns nil if pag is tracked correctly. If not, returns the page info as a pipe delimited string so that failed and undefined category pages can be identified.
def test_category_page(cat_name,cat_url,wait_time,show_log)
	testResponse = nil
	@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
	@browser.goto cat_url #"http://www.alexandalexa.com/home-school/kids-bedroom" #
	sleep wait_time
	cat_name = cat_name.length > 20 ? cat_name[0..17].gsub(/\s\w+\s*$/,'...').gsub(/\s+/, "") : cat_name.gsub(/\s+/, "")
	reload_attempts = @current_page.get_num_of_reloads_per_category
	if !(@browser.td(:id => 'trackInfo').exists? && @browser.td(:id => 'trackInfo').text != nil) 
		reload_attempts.times do |attempt|
			if !@browser.td(:id => 'trackInfo').exists?
				plog("\tTrackInfo NOT FOUND on #{cat_url} : Reload attempt #{attempt+1} ...", "grey") if show_log
				@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
				@browser.refresh 
				@browser.alert.ok if @browser.alert.exists?
				sleep wait_time #@browser.td(:id => 'trackInfo').wait_until_present(10)
			else 
			 	break
			end
		end
	end
	if @browser.td(:id => 'trackInfo').exists?
		page_type = @browser.td(:id => 'trackInfo').text[/For(.*?)Page/m, 1]
		# Sometimes the element exists but watir is unable to read due to a modal div popup as is the case with tedbaker
		unless page_type != nil 
			@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
			@browser.refresh 
			page_type = @browser.td(:id => 'trackInfo').text[/For(.*?)Page/m, 1]
		end
		#plog("DEBUG => #{page_type} // #{@browser.div(:id => 'peeriusDebug')}","red")
		if page_type.include?("Category")
			testResponse = "#{cat_name}|#{cat_url}|SUCCESS"
			# plog("#{cat_name} : \t#{cat_url}\t=> tracked as Category page with unique Id [#{@browser.td(:id => 'categoryUniqueId').text}]","green") if show_log
		else
			testResponse = "#{cat_name}|#{cat_url}|#{page_type}"
		end 
	else
		testResponse = "#{cat_name}|#{cat_url}|<<UNDEFINED>>"
	end
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

def show_tested_categories(cat_list, status, show_log)
	msg_colour = (status == "TRACKED"? "green" : (status == "FAILED"? "red" : (status == "FAILED"? "magenta" : "grey")))
	plog("#{status} CATEGORY PAGES:",msg_colour) if show_log
	cat_list.each do |tcat|
		cat = tcat.split("|")
		plog("\t#{cat[0]}:\t#{cat[1]}",msg_colour) if show_log
	end
end