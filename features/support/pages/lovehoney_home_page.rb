#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Lovehoney
  
    class HomePage
		include PageObject
		include PeeriusHelper

		URL = "http://www.lovehoney.co.uk/"
		direct_url URL
		#page elements - retained for backward compatibility
		
		text_field(:search_field, :id => "headerSearch")
        
		
		link(:login_link, :href=>"https://www.lovehoney.co.uk/your-account/")
		
        # site elements
		
		 
		
		ul(:category_menu, :id => "nav")
		
		
		
		div(:product_links, :id=> "products")
		
		
		button(:add_to_basket, :class=> "button std-arrow double-decker")
      	 
      	
      	
		ul(:product_option1, :class=> "varieties")
		
		select_list(:product_option2, :name=> "p")
		
	    
	    

		# methods
		def get_product_link_filter
				
			return ["class", "fn"]
				
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
				
			return ["title=>Gifts", "title=>Sale", "url=>community", "url=>help", "url=>%/lingerie/", "url=>%/bondage/"]
				
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
				
			return "Sold out"
				
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
		
			return nil
		
		end
		
		def get_static_test_prod_url
		
			return "http://www.lovehoney.co.uk/product.cfm?p=13913"
		
		end 
		
		def get_custom_search_js
		
			return nil
		
		end 
		
		def has_search_button
		
			return false
				
		end
		
		def get_ab_group
		
			return nil
		
		end 
		
		
    end  
end
