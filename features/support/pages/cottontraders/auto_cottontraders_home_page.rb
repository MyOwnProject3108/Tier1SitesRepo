#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Cottontraders
  
    class HomePage
		include PageObject
		include PeeriusHelper

		URL = "http://www.cottontraders.co.uk/"
		direct_url URL
		
        text_field(:search, :id => "q")
        
		#page elements - retained for backward compatibility
		
		link(:login_link, :id => "Lustype_loginlink")
		
        # site elements
		
		div(:category_menu, :id => "topnavstandard")
		
		
		
		ul(:product_links, :xpath=> "//div[@id=\"searchResults\"]/div[6]/ul")
		
		
		link(:add_to_basket, :xpath=> "//div[@id=\"prodpageBasketButton\"]/a")
      	 
      	
      	
		table(:product_option1, :xpath=> "//div[@id=\"grid\"]/form/table[1]")
		
	    
	    

		# methods
		def get_product_link_filter
				
			return ["class", "moredetail"]
				
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
		
			return 5
		
		end 
		
		def get_categories_to_exclude
				
			return ["Overseas"]
				
		end
		
		def get_category_paging_info
		
			return []
		
		end
	
		def get_wait_time_per_product_page
		
			return 2
		
		end
		
		def get_num_of_product_options
				
			return 1
				
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
