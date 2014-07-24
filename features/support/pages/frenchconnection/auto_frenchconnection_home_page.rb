#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140623
#

module Frenchconnection
  
    class HomePage
		include PageObject
		include PeeriusHelper

		URL = "http://www.frenchconnection.com/"
		direct_url URL
		#page elements - retained for backward compatibility
		
		
		link(:login_link, :title => "Sign In")
		
        # site elements
		
		text_field(:search_field, :id => "site_search")
		
		
		button(:search_button, :id=> "site_search_submit")
      	 
		
		div(:category_menu, :class => "top_navigation_dropdown clearfix")
		
		
		
		div(:product_links, :id=> "category_product_container")
		
		
		button(:add_to_basket, :id=> "addToBasket")
      	 
      	
      	
		select_list(:product_option1, :id=> "selColour")
		
		select_list(:product_option2, :id=> "selSize")
		
	    
	    

		# methods
		def get_product_link_filter
				
			return ["class", "category_product_link"]
				
		end
		
		def get_product_option_filter
		
			return []
				
		end
		
		def get_max_num_of_categories
		
			return 1
		
		end 

		def get_max_num_of_products
		
			return 2
		
		end 
		
		def get_num_of_reloads_per_category
		
			return 2
		
		end 
		
		def get_wait_time_per_category_page
		
			return 3
		
		end 
		
		def get_categories_to_exclude
				
			return ["Woman", "Man", "Homeware", "Outlet", "Discover", "blog"]
				
		end
		
		def get_category_paging_info
		
			return []
		
		end
	
		def get_wait_time_per_product_page
		
			return 2
		
		end
		
		def get_num_of_product_options
				
			return 2
				
		end
		
		def get_product_keywords_to_exclude
		
			return []
				
		end
		
		def get_out_of_stock_msg
		
			return nil
				
		end
		
		def has_product_options_preselect
		
			return false
				
		end
		
		def show_log
		
			return true
		
		end 
		
		def ignore_cat_tracked_as_other_page
		
			return true
		
		end 
		
		def get_add_to_basket_error_msg
		
			return nil
			
		end
		
		
		def is_static_test_enabled
		
			return false
		
		end 
		
		def get_static_test_cat_url
		
			return ""
		
		end
		
		def get_static_test_prod_url
		
			return nil
		
		end 
		
		def get_custom_search_js
		
			return "document.getElementById('sbox_container').className = 'clearfix open';"
		
		end 
		
		def has_search_button
				
			return true
				
		end
		
		def get_ab_group
		
			return nil
		
		end 
		
		
    end  
end
