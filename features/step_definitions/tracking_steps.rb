Then /^it should be tracked as (?:the|a|an) (.+)page$/ do |page|  
	
    begin
    # Turn the page description into a page classname (e.g. search page -> SearchPage)
    page_class_name = page.split.collect!{|x| x.capitalize}.join
    @current_page.should be_tracked_as page_class_name + ((page.include? "Order") ? "" : "Page")
    #@browser.refresh
    @browser.driver.manage.timeouts.implicit_wait = 10  
     rescue Selenium::WebDriver::Error::StaleElementReferenceError, Selenium::WebDriver::Error::UnhandledAlertError
         
      #refresh
     @browser.refresh
     
     #Dismiss Alert shown in secured websites after refresh
     @browser.alert.close
         @browser.driver.manage.timeouts.implicit_wait = 5
   
     @current_page.should be_tracked_as page_class_name + ((page.include? "Order") ? "" : "Page")
    
   end

 end
Then /^the first widget name should be "(.+)"$/ do |debug_widget_name|
  	@current_page.debug_widget_name.should include(debug_widget_name)
end

Then /^the debug info should show at least (\d+) SMART\-recs?$/ do |expected_recs|  
  	@current_page.debug_recs.should have_at_least(expected_recs).entries  
end

Then /^the debug info may show SMART\-recs?$/ do  
  	#do nothing
end

Then /^the debug info will not show SMART\-recs?$/ do
  	@current_page.debug_recs.should have(0).entries  
end

Then /^all categories except the categories that match the exclusion criteria :"(.+)" should be tracked as Category pages$/ do |categories_exclude_list|
 	test_random_category_or_all_category_tracking(true)
end

Then /^all categories should be tracked as Category pages$/ do 
 	test_random_category_or_all_category_tracking(true)
end

Then /^each randomly selected category should be tracked as a Category page$/ do
  	test_random_category_or_all_category_tracking(false)
end

Then /^each randomly selected product should be tracked as a Product page$/ do 
	test_random_product_page_and_add_to_basket_tracking(false)
end

When /^I add one or more random products to basket$/ do 
  	test_random_product_page_and_add_to_basket_tracking(true)
end

When /^I visit the top navigation page with index:$/ do |page_index|
   	visit_nav_page(page_index, true)
end

When /^I visit the first top navigation page$/ do 
   	visit_nav_page(0, false)
end

@@rand_value = rand(1..999999).to_s
@@show_log = false
When /^I auto-generate (.+) using "(.+)" for the (.+) with (.+) "(.+)"$/ do |data_type, value, element, locator, locator_value|
	gen_value = value
	gen_value = eval("autogenerate_"+data_type+'("'+value+'","'+ @@rand_value + '")')
	plog("\tAuto-generated " + data_type.upcase + " => " + gen_value, "magenta")
	@browser.send(element.to_sym, locator.to_sym => locator_value).wd.location_once_scrolled_into_view 
	@browser.send(element.to_sym, locator.to_sym => locator_value).set(gen_value)
end

###########################################
# The methods and the madness starts here
###########################################
def autogenerate_firstname(seed_value, rand_value)
	prefix = seed_value
    return prefix+rand_value
end

def autogenerate_lastname(seed_value, rand_value)
	prefix = seed_value
    return prefix+rand_value
end

def autogenerate_email(seed_value, rand_value)
	prefix = seed_value.partition('@').first
	domain = seed_value.partition('@').last
    return prefix+rand_value+'@'+domain
end

def visit_nav_page(page_index,is_table_data)
    nav_elements = @current_page.category_menu_preselect_element.link_elements.collect{|x| [x.attribute('textContent').gsub("\n",''), x.attribute('href')]}
    #nav_element = nav_elements.flatten!
    nav_link = nav_elements[page_index.raw.flatten![0].to_i] if is_table_data
    nav_link = nav_elements[page_index] if !is_table_data
    plog("\tNO CATEGORY LINKS on Home Page - USING nav link => #{nav_link[0]} :: #{nav_link[1]}", "yellow") if @@show_log
	@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
	@browser.goto nav_link[1] 
end
	
# This function extracts all the category links using category_menu element specified in the <sitename>.yaml file
# and randomly opens the specified number of categories and then opens the specified number of product pages from each per category 
# Params:
# +add_to_basket+:: boolean - true if each selected product needs to be added to basket else false
def test_random_product_page_and_add_to_basket_tracking(add_to_basket)
	@@show_log = (@current_page.show_log && @current_page.show_log ==  true) ? true : false

    categories = @current_page.category_menu_element.link_elements.collect{|x| [x.attribute('textContent').gsub("\n",''), x.attribute('href')]}

  	num_categories = rand(1..@current_page.get_max_num_of_categories)
  	wait_time_per_category = @current_page.get_wait_time_per_category_page
  	
  	num_products = rand(1..@current_page.get_max_num_of_products)
  	
	cat_ctr = 1
  	while cat_ctr <= num_categories
  		category = categories[rand(0..categories.length - 1)]
  		
		#cat_url = category[1] if !@current_page.is_static_test_enabled || @current_page.get_static_test_cat_url == "" #"http://www.cottontraders.com/menswear/mens-swimwear-/icat/mensswimwear" #
		#cat_url = @current_page.get_static_test_cat_url if @current_page.is_static_test_enabled && @current_page.get_static_test_cat_url != ""
		cat_name = is_static_test_enabled("C") ? "static_category" : category[0].strip
		cat_url = is_static_test_enabled("C") ? @current_page.get_static_test_cat_url : category[1]
		
		cat_ctr = check_category_and_test_product_page(cat_url, cat_name, cat_ctr, num_categories, num_products, add_to_basket)
  	end
    test_pass.should == true if ENV['DEBUG'] 
end

def select_product_options
	x = 1
	option_selected = true
	while x <= @current_page.get_num_of_product_options do
		product_options = eval('@current_page.product_option'+x.to_s+'_element')
		product_option_filter = @current_page.get_product_option_filter[x-1] if @current_page.get_product_option_filter.length > x-1
		#product_options_link_depth = @current_page.get_product_option_link_depth[x] #if the actual clickable element is located one or more levels deeper than the containing element
		if product_options.exists?
			#plog("LIST IS A #{product_options.class}","blue") if @@show_log
			product_options_preselect = eval('@current_page.product_options_preselect'+x.to_s+'_element') if @current_page.has_product_options_preselect
			case 
			when product_options.is_a?(PageObject::Elements::SelectList)
				options = product_options.options
				# if there are disabled options, remove them
				options = options.reject{|opt| opt.attribute("disabled") } if options.length >1 
				# if a product_option_filter is provided, remove options that contain the filter text
				options = options.reject{|opt| opt.text.include?(product_option_filter[2].gsub("%",''))} if options.length >1 && (product_option_filter && product_option_filter[1]=="text")
				options = options.reject{|opt| opt.id.include?(product_option_filter[2].gsub("%",''))} if options.length >1 && (product_option_filter && product_option_filter[1]=="id")
				sel_option = options.length > 1 ? options[1..-1].shuffle.first : options.shuffle.first 
				opt_index = options.length > 1 ? sel_option.index : 0
				if product_options.disabled? == false 
					plog("\tSelected option => #{sel_option.text} ...","blue") if @@show_log #&& product_options.visible?
					product_options_preselect.click if @current_page.has_product_options_preselect
					product_options.option(:index =>opt_index).when_present.select if product_options.visible?  #visible option for burton,Evans
					option_selected = true
				end
			when product_options.is_a?(PageObject::Elements::Table) #cottontraders
				prod_links = product_options.imgs if product_option_filter && product_option_filter[0]=="img"
				prod_links = product_options.links if !product_option_filter
				if product_option_filter
					prod_links = prod_links.reject{|x| !eval("x."+product_option_filter[1]).include?(product_option_filter[2].gsub("%",'')) } if product_option_filter[2].include?('%')
				end
				option = prod_links[rand(0..prod_links.length - 1)]
				option.click
			when product_options.is_a?(PageObject::Elements::UnorderedList) #superdry
				product_options_preselect.when_present.click if @current_page.has_product_options_preselect
				options = product_options.lis[1..-1] if !@current_page.ignore_single_product_option
				options = product_options.lis  if @current_page.ignore_single_product_option
				options = options.reject{|opt| opt.id.include?(product_option_filter[2].gsub("%",''))} if options.length >1 && (product_option_filter && product_option_filter[1]=="id")
				options = options.reject{|opt| opt.text.include?(product_option_filter[2].gsub("%",''))} if options.length >1 && (product_option_filter && product_option_filter[1]=="text")
				
				if(options.length > 1 || !@current_page.ignore_single_product_option)
					option = options.length > 1 ? options[0..-1].shuffle.first : options[-1]  
					opt_text = strip_clean(strip_tags(option.html)).to_s != "" ? strip_clean(strip_tags(option.html)).to_s : strip_tags(option.html)
					plog("\tPre-selected => #{strip_tags(product_options_preselect.html)}","blue") if @@show_log &&  @current_page.has_product_options_preselect
					plog("\tSelected option => #{opt_text}","magenta") if @@show_log && opt_text!=""
					begin
						option.links.first.click
					rescue 
						option.click
						plog("\tException : option.links.first.click did not work - so tried option.click instead","grey")
					end
					
					else 
					#CCFashion Added array sorting logic not to ignore first array object to enable selecting item with only one size available
					options = product_options.lis[0..-1]
					options = options.reject{|opt| opt.id.include?(product_option_filter[2].gsub("%",''))} if options.length >1 && (product_option_filter && product_option_filter[1]=="id")
					options = options.reject{|opt| opt.text.include?(product_option_filter[2].gsub("%",''))} if options.length >1 && (product_option_filter && product_option_filter[1]=="text")
					option = options.length <= 1 ? options[0..-1].shuffle.first : options[-1]
					opt_text = strip_clean(strip_tags(option.html)).to_s != "" ? strip_clean(strip_tags(option.html)).to_s : strip_tags(option.html)
					plog("\tPre-selected => #{strip_tags(product_options_preselect.html)}","blue") if @@show_log &&  @current_page.has_product_options_preselect
					plog("\tSelected option => #{opt_text}","magenta") if @@show_log && opt_text!=""
					begin
						option.links.first.click
					rescue 
						option.click
						plog("\tException : option.links.first.click did not work - so tried option.click instead","grey")
					end
		
  				end
			when product_options.is_a?(PageObject::Elements::Image)
				plog("\tSelected option => #{product_options} ...","magenta") if @@show_log
				product_options.click
			when product_options.is_a?(PageObject::Elements::Div) #kickz
				prod_links = product_options.links 
				option = prod_links[rand(0..prod_links.length - 1)]
				option.click
			when product_options.is_a?(PageObject::Elements::Element) #ctshirts - for dl/dt/dd elements
				option = product_options.dds[rand(1..product_options.dds.length - 1)] 
				product_options_preselect.click if @current_page.has_product_options_preselect
				plog("\tPre-selected => #{strip_clean(product_options_preselect.html)}","magenta") if @@show_log
				plog("\tSelected option => #{strip_tags(option.html)}","magenta") if @@show_log
				#plog("\tPre-selected => #{product_options_preselect.html.scan(/<span[^>]*?>(.*?)<\/span>/i).flatten.join(" ")}","magenta") if @@show_log
				option.links.first.click if option.links
				option.click if !option.links
			else
				# do nothing
			end
	 	end
		x = x+1
	end
	return option_selected
end

# This function extracts all the category links using category_menu element specified in the <sitename>.yaml file
# Params:
# +test_all_categories+:: boolean - true if all catgeories need to be tested else false
def test_random_category_or_all_category_tracking(test_all_categories)
	@@show_log = (@current_page.show_log && @current_page.show_log ==  true) ? true : false

    categories = @current_page.category_menu_element.link_elements.collect{|x| [x.attribute('textContent').gsub("\n",''), x.attribute('href')]}
    categories = categories.reject{|x| x[1]==nil || x[1]=="" }
    #debug_catlinks_output(categories)
    categories_to_exclude = nil
    #categories_to_exclude = categories_to_exclude.raw.flatten! if categories_to_exclude != nil && test_all_categories
    categories_to_exclude = @current_page.get_categories_to_exclude if test_all_categories
    cats_excluded = 0

	test_pass = true 
	wait_time_per_category = @current_page.get_wait_time_per_category_page
	ignore_cat_tracked_as_other_page = (@current_page.ignore_cat_tracked_as_other_page && @current_page.ignore_cat_tracked_as_other_page ==  true) ? true : false
	
	tracked_categories = Array.new
	failed_categories = Array.new
	undefined_categories = Array.new
	ignored_categories = Array.new
	excluded_categories = Array.new
	
	num_categories = categories.length if test_all_categories
	num_categories = rand(1..@current_page.get_max_num_of_categories) if !test_all_categories
	
	cat_ctr = 0
  	while cat_ctr < num_categories  
  		category = categories[cat_ctr] if test_all_categories
		category = categories[rand(0..categories.length - 1)] if !test_all_categories
		is_static_test_enabled = is_static_test_enabled("C") && !test_all_categories ? true : false
		cat_name = is_static_test_enabled ? "static category" : category[0].strip
		cat_url = is_static_test_enabled ? @current_page.get_static_test_cat_url : category[1] 
		plog("STATIC TEST enabled for category => #{cat_url} ...","grey") if @@show_log && is_static_test_enabled && cat_ctr==0
 		exclude_cat = false
		if (@current_page.get_categories_to_exclude.length > 0)
			#cats_to_exclude = @current_page.get_categories_to_exclude*","
			#exclude_cat = true if cats_to_exclude.include?(cat_name.strip)
			exclude_cat = should_exclude_category(cat_name,cat_url)
		end
		ignore_other_page = false
		if !exclude_cat
			cat_test_response = nil
			plog("Checking CATEGORY #{cat_ctr+1} #{cat_name} : #{cat_url} ...","grey") if @@show_log && ENV["DEBUG"]
			cat_test_response = test_category_page(cat_name,cat_url,wait_time_per_category)
			
			if cat_test_response.include?("Other") && ignore_cat_tracked_as_other_page
				ignore_other_page = true
				plog("\tIGNORING " + cat_test_response.split("|")[2].upcase + " PAGE " + "#{cat_name} (#{cat_url})" ,"grey") if @@show_log && ENV["DEBUG"]
			end
			tracked_categories << cat_test_response if cat_test_response.include?("SUCCESS")
			undefined_categories << cat_test_response if cat_test_response.include?("UNDEFINED")
			failed_categories << cat_test_response if cat_test_response.include?("OTHER") && !ignore_cat_tracked_as_other_page
			ignored_categories << cat_test_response if cat_test_response.include?("OTHER") && ignore_cat_tracked_as_other_page
			
		else
			cats_excluded = cats_excluded + 1
			plog("\tIGNORING EXCLUDED CATEGORY #{cat_name} : #{cat_url}","grey") if @@show_log #&& ENV["DEBUG"]
		end
		cat_ctr = cat_ctr + 1 if test_all_categories 
		if !test_all_categories
		  cat_ctr = cat_ctr + 1 if !(ignore_other_page)
		end
		#@browser.back
	end
	
	if tracked_categories.length > 0
		show_tested_categories(tracked_categories,"TRACKED")
		test_pass = true
	end 
	show_tested_categories(ignored_categories,"IGNORED") if ignored_categories.length > 0
	show_tested_categories(excluded_categories,"EXCLUDED") if excluded_categories.length > 0
	
	if (failed_categories.length > 0 || undefined_categories.length > 0  || ignored_categories.length > 0)
		show_tested_categories(failed_categories,"FAILED") if failed_categories.length > 0
		show_tested_categories(undefined_categories,"UNDEFINED") if undefined_categories.length > 0
		test_pass = false
		test_pass.should == false
	else
		test_pass.should == true	
	end
	plog("=========================================================================","grey")
	plog("\tTOTAL TESTED\t=> #{num_categories} category page" + (num_categories>1?"s":""),"yellow")
	plog("\tTEST PASSED \t=> #{tracked_categories.length} category page" + (tracked_categories.length > 1?"s":""),"green") if tracked_categories.length > 0
	plog("\tTEST FAILED \t=> #{failed_categories.length} category page" + (failed_categories.length > 1?"s":""),"red") if failed_categories.length > 0
	plog("\tNO TRACKINFO\t=> #{undefined_categories.length} page"+ (undefined_categories.length > 1?"s":""),"magenta") if undefined_categories.length > 0
	plog("\tIGNORED \t=> #{ignored_categories.length} page"+ (ignored_categories.length > 1?"s":""),"grey") if ignored_categories.length > 0 && ignore_cat_tracked_as_other_page
	plog("\tEXCLUDED    \t=> #{cats_excluded} category pages","grey") if test_all_categories 
	plog("=========================================================================","grey")
	@browser.cookies.clear
end

# This function tests if a category page is tracking correctly. 
# Returns nil if pag is tracked correctly. If not, returns the page info as a pipe delimited string so that failed and undefined category pages can be identified.
def test_category_page(cat_name,cat_url,wait_time)
	cat_test_response = nil
	@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
	@browser.goto cat_url 
	page_num = 1
	if (@current_page.get_category_paging_info.length > 0)
		cat_info = get_category_page_with_filter(cat_name, cat_url)
		cat_url = cat_info[0]
		page_num = cat_info[1]
		@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
		@browser.goto cat_url 
	end
	sleep wait_time
	if @current_page.get_site_custom_js != nil
		@browser.execute_script(@current_page.get_site_custom_js)
	end
	cat_name = cat_name.length > 20 ? cat_name[0..17].strip.gsub(/\s\w+\s*$/,'...').gsub(/\s+/, "") : cat_name.strip.gsub(/\s+/, "")
	reload_attempts = @current_page.get_num_of_reloads_per_category
	if !(@browser.td(:id => 'trackInfo').exists? && @browser.td(:id => 'trackInfo').text != nil) 
		reload_attempts.times do |attempt|
			if !@browser.td(:id => 'trackInfo').exists?
				plog("\tTrackInfo NOT FOUND on #{cat_url} : Reload attempt #{attempt+1} ...", "grey") if @@show_log
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
		page_type = @browser.td(:id => 'trackInfo').text.downcase[/for(.*?)page/m, 1]
		# Sometimes the element exists but watir is unable to read due to a modal div popup as is the case with tedbaker
		unless page_type != nil 
			@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
			@browser.refresh 
			page_type = @browser.td(:id => 'trackInfo').text[/For(.*?)Page/m, 1]
		end
		#plog("DEBUG => #{page_type} // #{@browser.div(:id => 'peeriusDebug')}","red")
		if page_type.include?("category")
			cat_test_response = "#{cat_name}|#{cat_url}|SUCCESS|#{page_num}"
			# plog("#{cat_name} : \t#{cat_url}\t=> tracked as Category page with unique Id [#{@browser.td(:id => 'categoryUniqueId').text}]","green") if @@show_log
		else
			cat_test_response = "#{cat_name}|#{cat_url}|#{page_type.upcase}|#{page_num}"
		end 
	else
		cat_test_response = "#{cat_name}|#{cat_url}|<<UNDEFINED>>|#{page_num}"
	end
	return cat_test_response
end

def show_tested_categories(cat_list, status)
	msg_colour = (status == "TRACKED"? "green" : (status == "FAILED"? "red" : (status == "UNDEFINED"? "magenta" : "grey")))
	plog("#{status} CATEGORY PAGES:",msg_colour) if @@show_log
	cat_list.each do |tcat|
		cat = tcat.split("|")
		plog("\t#{cat[0]}:\t#{cat[1]}",msg_colour) if @@show_log
	end
end

def get_category_page_with_filter(cat_name, cat_url)
	paging_url_filter = ""
	elem_array = Array.new
	filter_criteria = Array.new
	page_num = 1
	has_more_pages = false
	total_products = nil
	@current_page.get_category_paging_info.each do |page_key,page_val|
		case page_key
			when "total_products_text"
				elem_array = page_val.split("|")
				elem = eval("@browser."+elem_array[0]+"(" +elem_array[1]+ "=>" +elem_array[2]+")")
				total_products = elem.text
			when "total_products_text_filter"
				filter_criteria = page_val.split("|")
				has_more_pages = true if total_products.include?(filter_criteria[1])
				total_products = total_products[/#{filter_criteria[1]}(.*?)#{filter_criteria[2]}/m, 1].strip! if filter_criteria[0]=="between" && has_more_pages
			when "products_per_page"
				page_num = total_products.to_i/page_val.to_i if has_more_pages
				page_num = rand(1..page_num)
			when "paging_url_filter"
				paging_url_filter = page_val.gsub("<pagenum>",page_num.to_s) 
			else
			    # do nothing
		end
		
	end
    plog("CATEGORY #{cat_name} :: #{cat_url} :: has a total of #{total_products} products","grey") if @@show_log && has_more_pages
	cat_url = cat_url + paging_url_filter
	return [cat_url, page_num]

end

#Then /^the debug info should show at least (\d+) SMART\-content$/ do |expected_content|
 # @current_page.debug_content.should have_at_least(expected_content).entries
#end

def should_exclude_category(cat_name, cat_url)
	exclude_cat = false

	cat_info_to_exclude = @current_page.get_categories_to_exclude
	
	cat_info_to_exclude.each do |cat_info|
	  exclude_cat = true if cat_info.include?(cat_name) # exact title match if => IS NOT included in the cat_info
	  begin
		  if cat_info.include?("=>") # partial title or url match if => IS included in the cat_info
			info_type = cat_info.split("=>")[0] 
			info_value = cat_info.split("=>")[1] 

			exclude_cat = true if info_type == "url" && !info_value.include?("%") && cat_url.include?(info_value)
			exclude_cat = true if info_type == "url" && info_value.include?("%") && cat_url.end_with?(info_value.gsub("%",""))
			exclude_cat = true if info_type == "title" && cat_name.strip.include?(info_value) # partial title match 
		  end
	  rescue
	  	plog("ERROR WHEN TRYING TO EXCLUDE CATEGORY: #{cat_name} :: #{cat_url}","red")
	  end
	end
    return exclude_cat
end

# This function filters product links extracted from a category page based on the filter criteria specified in the yaml config 
# Returns filtered product links collection
# Params:
# +product_links+:: array of product link elements extracted from the category page
def get_filtered_product_links(product_links)

	if @current_page.get_product_link_filter.length > 0
		link_filter = @current_page.get_product_link_filter
		filter_attrib_name = link_filter[0]
		filter_attrib_val = link_filter[1]
		# Reject links that DO NOT have the attribute with name <filter_attrib_name> with matching value <filter_attrib_val>
		product_links = product_links.reject{|x| x.attribute(filter_attrib_name) != filter_attrib_val} if filter_attrib_name != "ignore" && filter_attrib_val != "*" && !filter_attrib_val.include?('%')
		# Reject links that DO have the attribute with name <filter_attrib_name> with matching value <filter_attrib_val>  Added by fayaz
		#product_links = product_links.reject{|x| x.attribute(filter_attrib_name) = filter_attrib_val} if filter_attrib_name != "ignore" && filter_attrib_val != "*" && !filter_attrib_val.include?('%') && !filter_attrib_val.include?('%')
		# Reject links that DO NOT have the attribute with name <filter_attrib_name> where the attribute value <filter_attrib_val> is indeterminate or random
		product_links = product_links.reject{|x| !x.attribute(filter_attrib_name) } if filter_attrib_val == "*"
		# Reject links that DO NOT have the attribute with name <filter_attrib_name> with partially matching value <filter_attrib_val>
		product_links = product_links.reject{|x| !x.attribute(filter_attrib_name).include?(filter_attrib_val.gsub("%",'')) } if filter_attrib_val.include?('%')
		# debug_links_output(product_links)
		# Collect all links that have an attributes "title" and "href"
	end
	product_links = product_links.collect{|x|	x.attribute('title')!="" ?	[x.attribute('title'), x.attribute('href')] : [strip_tags(x.text), x.attribute('href')]}
	
	return product_links
end

# This function tests the product page passed to it 
# If the page selected is a product page and the trackInfo identifies the page as a Product page, then the product counter passed to the function is incremented and returned 
# If the page selected is a category page, then the function does not increment the produict counter, in which case the calling function might randomly pick a different product 
# Params:
# +product+:: the product object that was randomly selected and passed to this function
# +prod_ctr+:: product counter that is passed to this function from the calling function which is returned  
# +num_products+:: number of products being tested
# +add_to_basket+:: boolean - true if each selected product needs to be added to basket else false
def test_product_page(product, prod_ctr, num_products, add_to_basket)

	wait_time_per_product = @current_page.get_wait_time_per_product_page
				
	prod_name = is_static_test_enabled("P") ? "static_product" : product[0].strip
	prod_url = is_static_test_enabled("P") ? @current_page.get_static_test_prod_url : product[1]
	plog("STATIC TEST enabled for product => #{prod_url} ...","grey") if @@show_log && is_static_test_enabled("P") && prod_ctr==1

	exclude_prod = false
	if (@current_page.get_product_keywords_to_exclude.length > 0)
		#prods_to_exclude = @current_page.get_product_keywords_to_exclude*","
		@current_page.get_product_keywords_to_exclude.each do |p_name|
			exclude_prod = true if prod_name.strip.include?(p_name)
		end
	end

	if !exclude_prod
		prod_name = prod_name[0..30].gsub(/\s\w+\s*$/,'...') if prod_name.length > 30 
		# plog("\tPRODUCT => #{prod_name} :: #{prod_url}","yellow")
		plog("\tTesting PRODUCT #{prod_name} :: #{prod_url}","yellow") if @@show_log
		@browser.cookies.add 'peerius_pass_peeriusdebug', '1'
		@browser.goto prod_url #'http://showcase.peerius.com/index.php/clothing/mens/tops/10457232.html' "http://www.cottontraders.com/womens-shirts+blouses/34-sleeve-spot-print-blouse/invt/ab10892" #
		sleep wait_time_per_product
		if @current_page.get_site_custom_js != nil
			@browser.execute_script(@current_page.get_site_custom_js)
		end
		if @current_page.get_product_page_custom_js != nil
			@browser.execute_script(@current_page.get_product_page_custom_js)
		end

		option_selected = true
		out_of_stock = false
		out_of_stock = true if @current_page.get_out_of_stock_msg != nil && @browser.text.include?(@current_page.get_out_of_stock_msg)
	#	abort("outofstock was true") if out_of_stock

		if out_of_stock == false
			#wait for element to be visible
			@browser.td(:id => 'trackInfo').wait_until_present
			page_type = @browser.td(:id => 'trackInfo').text.downcase
			if page_type.include?("productpage")
				if(add_to_basket) #if add_to_basket is true add product to basket (for end to end testing)
					plog("\tPRODUCT #{prod_ctr} of #{num_products} => #{prod_name} :: #{prod_url}","yellow") if @@show_log

					if @current_page.get_add_to_basket_custom_js != nil
						@browser.execute_script(@current_page.get_add_to_basket_custom_js)
					end
					if @current_page.get_num_of_product_options > 0
						option_selected = select_product_options
					end
					@current_page.add_to_basket_element.click
					has_add_to_basket_error_msg = @current_page.get_add_to_basket_error_msg != nil ? true : false

					if has_add_to_basket_error_msg
						add_to_basket_error_msg = @current_page.get_add_to_basket_error_msg

						while @browser.text.include?(add_to_basket_error_msg)
							option_selected = select_product_options
							@current_page.add_to_basket_element.when_present.click
						end
					end
					plog("\tADDED TO BASKET => #{prod_name} :: #{prod_url}","yellow") if @@show_log
					sleep wait_time_per_product # do we need a wait time for basket ? why not use the product wait time?
				else #product page is tracking as expected - nothing more to do
					plog("\tPRODUCT #{prod_ctr} of #{num_products} => #{prod_name} :: #{prod_url} - tracked as Product Page","green") 
				end
			elsif page_type.include?("categorypage")
				plog("\tExpected PRODUCT PAGE but found CATEGORY PAGE :: #{prod_url} => RETRYING...","grey") if @@show_log
				return prod_ctr
			elsif page_type.include?("otherpage")
				plog("\tExpected PRODUCT PAGE but found OTHER PAGE :: #{prod_url} => RETRYING...","grey") if @@show_log
				return prod_ctr
			else
				plog("\t\t#{prod_name}:\t\t#{prod_url} \t=> tracked as #{@browser.td(:id => 'trackInfo').text} - FAILED","red")
				test_pass = false
			end
			prod_ctr = prod_ctr + 1 if option_selected
		else
			plog("\tIGNORING OUT OF STOCK PRODUCT #{prod_name} : #{prod_url}","grey") if @@show_log
		end
	else
		#prod_ctr = prod_ctr + 1 
		plog("\tIGNORING EXCLUDED PRODUCT #{prod_name} : #{prod_url}","grey") if @@show_log
	end
	return prod_ctr

end

# This function checks the category page passed to it and tests the product page(s) based on randomly selected product links extracted from a category url
# Params:
# +cat_url+:: url of the category page
# +cat_name+:: name of the category link
# +cat_ctr+:: category counter that is passed to this function from the categories loop
# +num_categories+:: number of categories being tested
# +num_products+:: number of products being tested
# +add_to_basket+:: boolean - true if each selected product needs to be added to basket else false
def check_category_and_test_product_page(cat_url, cat_name, cat_ctr, num_categories, num_products, add_to_basket)
	wait_time_per_category = @current_page.get_wait_time_per_category_page
	ignore_cat_tracked_as_other_page = (@current_page.ignore_cat_tracked_as_other_page && @current_page.ignore_cat_tracked_as_other_page ==  true) ? true : false
	cat_info = Array.new

	exclude_cat = false
	exclude_cat = should_exclude_category(cat_name,cat_url) if @current_page.get_categories_to_exclude.length > 0 #&& !@current_page.is_static_test_enabled && @current_page.get_static_test_cat_url != ""
	
	if !exclude_cat
		cat_test_response = nil
		plog("STATIC TEST enabled for category => #{cat_url} ...","grey") if @@show_log && is_static_test_enabled("C") && cat_ctr==1
	    plog("SELECTED CATEGORY is: #{cat_ctr} #{cat_name} : #{cat_url}","grey") if @@show_log && !is_static_test_enabled("C") 
	    	    
		cat_test_response = test_category_page(cat_name,cat_url,wait_time_per_category)
		cat_info = cat_test_response.split("|") if cat_test_response != nil
		
		if cat_test_response != nil && cat_test_response.include?("SUCCESS") 
				products = @current_page.product_links_element.exists? ? @current_page.product_links_element.link_elements : nil
				if !products 
					if !@current_page.ignore_cat_without_products
						fail(PeeriusConfigurationError.new("FAILED :: PRODUCT LINKS NOT FOUND ON CATEGORY PAGE #{cat_info[0]}(#{cat_info[1]}) USING #{@current_page.get_site_vars['product_links']}"))
					else
						plog("\tIGNORING CATEGORY WITHOUT PRODUCTS for #{cat_name} : #{cat_url}","grey") if @@show_log
						return cat_ctr
					end
				end

				products = get_filtered_product_links(products) 
				if products.length == 0 
					if !@current_page.ignore_cat_without_products
						fail(PeeriusConfigurationError.new("FAILED :: NO PRODUCTS were found on category page #{cat_info[0]}(#{cat_info[1]})"))
					else
						plog("\tIGNORING CATEGORY WITHOUT PRODUCTS for #{cat_name} : #{cat_url}","grey") if @@show_log
						return cat_ctr
					end
				end
		
				page_info = "Page #{cat_info[3]} of " #if cat_info[3] != 1
				plog("\t#{page_info}CATEGORY #{cat_ctr} of #{num_categories} => #{cat_info[0].strip} :: #{cat_info[1]} :: has #{products.length} products","yellow") if @@show_log
				prod_ctr = 1
				while prod_ctr <= num_products
					product = products[rand(0..products.length - 1)]
					prod_ctr = test_product_page(product, prod_ctr, num_products, add_to_basket)
				end
				cat_ctr = cat_ctr + 1
		else
			if !ignore_cat_tracked_as_other_page
				plog("\t\t#{cat_info[0]}:\t\t#{cat_info[1]} \t=> tracked as #{cat_info[2].upcase} page - FAILED","red")
				cat_ctr = cat_ctr + 1 
				test_pass = false
			else
				plog("\tIGNORING #{cat_info[2].upcase} PAGE " + "#{cat_info[0]} (#{cat_info[1]})" ,"grey")
			end
		end 
	else
		plog("\tIGNORING EXCLUDED CATEGORY #{cat_name} : #{cat_url}","grey") if @@show_log
	end
	return cat_ctr
end

def is_static_test_enabled(page_type)
	static_test_enabled = false
	static_test_enabled = @current_page.is_static_test_enabled && @current_page.get_static_test_prod_url != "" ? true : false if page_type == "P"
	static_test_enabled = @current_page.is_static_test_enabled && @current_page.get_static_test_cat_url != "" ? true : false if page_type == "C"
	return static_test_enabled
end

def debug_links_output(coll)
	coll.each do |c|
		plog(c.attribute("href"),"grey")
	end
end

def debug_catlinks_output(coll)
	coll.each do |c|
		plog("#{c[0]} :: #{c[1]}","grey")
	end
end

