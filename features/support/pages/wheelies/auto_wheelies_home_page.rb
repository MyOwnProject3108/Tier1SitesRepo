#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Wheelies
  
    class HomePage
		include PageObject
		include PeeriusHelper

		URL = "http://www.wheelies.co.uk/"
		direct_url URL
		
        text_field(:search, :id => "ctl00_ctl03_tbSearch")
        
		#page elements - retained for backward compatibility
		
		link(:login_link, :href=> "http://www.wheelies.co.uk/UserAdmin/Default.aspx")
		
        # site elements
		
		ul(:category_menu, :id => "main-navigation")
		
		
		
		ul(:product_links, :id=> "products")
		
		
		button(:add_to_basket, :id=> "ctl00_ContentPlaceHolder1_Repeater1_ctl00_btnAddToCart")
      	 
      	
      	
	    
	    

		# methods
		def get_product_link_filter
				
			return ["class", "product large"]
				
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
		
			return 5
		
		end 
		
		def get_categories_to_exclude
				
			return ["Clearance", "Brands", "Guides", "Blog", "url=>%wheelies.co.uk/"]
				
		end
		
		def get_category_paging_info
		
			return []
		
		end
	
		def get_wait_time_per_product_page
		
			return 2
		
		end
		
		def get_num_of_product_options
		
			return 0
				
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
		
			return false
		
		end 
		
		def get_add_to_basket_error_msg
		
			return nil
			
		end
		
		
		def is_static_test_enabled
		
			return false
		
		end 
		
		def get_static_test_cat_url
		
			return "http://www.wheelies.co.uk/c23/accessories.aspx"
		
		end
		
		def get_static_test_prod_url
		
			return "http://www.wheelies.co.uk/p56689/Specialized-Align-Road-Cycling-Helmet.aspx"
		
		end 
		
		def get_custom_search_js
		
			return nil
		
		end 
		
		def get_ab_group
		
			return "1"
		
		end 
		
		
    end  
end
