#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Topshop
  
    class HomePage
		include PageObject
		include PeeriusHelper

		URL = "http://www.topshop.com/"
		direct_url URL
		
        text_field(:search, :id => "inp_search_text")
        
		#page elements - retained for backward compatibility
		
		link(:login_link, :title => "Login")
		
        # site elements
		
		ul(:category_menu, :id => "nav_catalog_menu")
		
		
		
		div(:product_links, :id=> "wrapper_page_content")
		
		
		button(:add_to_basket, :xpath=> "/html/body/div/div[3]/div[2]/div/div[3]/div/form/ul/li/input")
      	 
      	
      	
	    
	    

		# methods
		def get_product_link_filter
				
			return ["data-productid", "*"]
				
		end
		
		def get_product_option_filter
		
			return []
				
		end
		
		def get_max_num_of_categories
		
			return 1
		
		end 

		def get_max_num_of_products
		
			return 1
		
		end 
		
		def get_num_of_reloads_per_category
		
			return 2
		
		end 
		
		def get_wait_time_per_category_page
		
			return 3
		
		end 
		
		def get_categories_to_exclude
				
			return ["Topshop Magazine", "New In", "Premium Shoes"]
				
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
		
			return nil
		
		end 
		
		def get_ab_group
		
			return nil
		
		end 
		
		
    end  
end
