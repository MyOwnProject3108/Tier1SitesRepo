#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140623
#

module Thewhitecompany
  
    class HomePage
		include PageObject
		include PeeriusHelper

		URL = "http://www.thewhitecompany.com/"
		direct_url URL
		#page elements - retained for backward compatibility
		
		text_field(:search, :id => "in_site_search")
        
		
		link(:login_link, :link => "Sign in . register")
		
        # site elements
		
		 
		
		div(:category_menu, :id => "site_container")
		
		
		
		ul(:product_links, :id=> "ls-category-products")
		
		
		button(:add_to_basket, :id=> "btnAddtoBasketTop")
      	 
      	
      	
		select_list(:product_option1, :xpath=> "/html/body/div/div[3]/form/div[2]/div[5]/ul/li/ul/li/select")
		
		img(:product_option2, :xpath=> "/html/body/div/div[3]/form/div[2]/div[5]/ul/li/ul/li/div/img[1]")
		
	    
	    

		# methods
		def get_product_link_filter
				
			return ["class", "text-center"]
				
		end
		
		def get_product_option_filter
		
			return []
				
		end
		
		def get_max_num_of_categories
		
			return 5
		
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
				
			return ["Bedroom", "Gifts", "Our Blog"]
				
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
				
			return ["Bed", "Linen", "Quilt", "Sheets", "Duvet", "Pillowcases", "Valance", "Protectors"]
				
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
