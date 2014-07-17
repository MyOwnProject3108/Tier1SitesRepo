#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Simplypersonalized
  
    class HomePage
		include PageObject
		include PeeriusHelper

		URL = "http://www.simplypersonalized.com"
		direct_url URL
		#page elements - retained for backward compatibility
		
		text_field(:search_field, :id => "ctl00_ctl14_tbFreeText")
        
		
		link(:login_link, :href=> "www.simplypersonalized.com/customer/account/login/")
		
        # site elements
		
		 
		
		ul(:category_menu, :xpath => "//form[@id=\"aspnetForm\"]/header/nav/div/div/div/div/div/ul")
		
		
		
		div(:product_links, :xpath=> "//form[@id=\"aspnetForm\"]/div/section/div[2]/div")
		
		
		button(:add_to_basket, :xpath=> "//form[@id=\"product_addtocart_form\"]/div/div/div/button")
      	 
      	
      	
		select_list(:product_option1, :xpath=> "//div[@id=\"product-options-wrapper\"]/dl/dd[1]/div/select")
		
		select_list(:product_option2, :xpath=> "//div[@id=\"product-options-wrapper\"]/dl/dd[2]/div/select")
		
	    
	    

		# methods
		def get_product_link_filter
		
			return []
				
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
		
			return 2
		
		end 
		
		def get_categories_to_exclude
				
			return ["Home", "JigsawPuzzles", "RandomGifts", "AllBooks"]
				
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
				
			return ["Canvas"]
				
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
		
			return "http://www.simplypersonalized.com/fathers-day-gifts/"
		
		end
		
		def get_static_test_prod_url
		
			return ""
		
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
