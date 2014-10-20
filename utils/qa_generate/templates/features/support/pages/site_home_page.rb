<% if site["ignore"] or site["ignore_web"]%>
#ignore
<% end %>
#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v<%= QA_GENERATE_VERSION %>
#

<% if site["home_page"] %>
<% page = site["home_page"] %>
module <%= site["site_name"].capitalize %>
  
    class HomePage
		include PageObject
		include PeeriusHelper

		URL = "<%= debug_url(page["URL"]) %>"
		direct_url URL
		#page elements - retained for backward compatibility
		<% if page["search_field"] %>
		<%= page["search_field"][0] %>(:search_field, <%= page["search_field"][1] %>)
        <% end %>
		<% if page["login_link"] %>
		<%= page["login_link"][0] %>(:login_link, <%= page["login_link"][1] %>)
		<% end %>
        # site elements
		<% if site["search_field"] %>
		<%= site["search_field"][0] %>(:search_field, <%= site["search_field"][1] %>)
		<% end %>
		<% if site["search_button"] %>
		<%= site["search_button"][0] %>(:search_button, <%= site["search_button"][1] %>)
      	<% end %> 
		<% if site["category_menu"] %>
		<%= site["category_menu"][0] %>(:category_menu, <%= site["category_menu"][1] %>)
		<% end %>
		<% if site["category_menu_preselect"] %>
		<%= site["category_menu_preselect"][0] %>(:category_menu_preselect, <%= site["category_menu_preselect"][1] %>)
		<% end %>
		<% if site["product_links"] %>
		<%= site["product_links"][0] %>(:product_links, <%= site["product_links"][1] %>)
		<% end %>
		<% if site["add_to_basket_button"] %>
		<%= site["add_to_basket_button"][0] %>(:add_to_basket, <%= site["add_to_basket_button"][1] %>)
      	<% end %> 
      	
      	<% if site["product_options"] 
		 site["product_options"].each_with_index do |option, idx| 
		%>
		<%= option[0] %>(:product_option<%=idx+1%>, <%= option[1] %>)
		<% end 
	    end %>
	    
	    <% if site["product_options_preselect"] 
		 site["product_options_preselect"].each_with_index do |option_preselect, idx| 
		%>
		<% if option_preselect[2] %>
		<%= option_preselect[0] %>(:product_options_preselect<%=idx+1%>, <%= option_preselect[1] %>, :index=> <%= option_preselect[2] %> )
		<% else %>
		<%= option_preselect[0] %>(:product_options_preselect<%=idx+1%>, <%= option_preselect[1] %>)
		<% end
		end 
	    end %>

		# methods
		def get_product_link_filter
		<% if site["product_link_filter"] %>		
			return <%= site["product_link_filter"] %>
		<% else %>
			return []
		<% end %>		
		end
		
		def get_product_option_filter
		<% if site["product_option_filter"] %>		
			return <%= site["product_option_filter"] %>
		<% else %>
			return []
		<% end %>		
		end
		
		def get_max_num_of_categories
		<% if site["max_num_of_categories"] %>
			return <%= site["max_num_of_categories"] %>
		<% else %>
			return 1
		<% end %>
		end 

		def get_max_num_of_products
		<% if site["max_num_of_products"] %>
			return <%= site["max_num_of_products"] %>
		<% else %>
			return 1
		<% end %>
		end 
		
		def get_num_of_reloads_per_category
		<% if site["num_of_reloads_per_category"] %>
			return <%= site["num_of_reloads_per_category"] %>
		<% else %>
			return 1
		<% end %>
		end 
		
		def get_wait_time_per_category_page
		<% if site["wait_time_per_category_page"] %>
			return <%= site["wait_time_per_category_page"] %>
		<% else %>
			return 2
		<% end %>
		end 
		
		def get_categories_to_exclude
		<% if site["categories_to_exclude"] %>		
			return <%= site["categories_to_exclude"] %>
		<% else %>
			return []
		<% end %>		
		end
		
		def get_category_paging_info
		<% if site["category_paging_info"] %>
			return <%= site["category_paging_info"] %>
		<% else %>
			return []
		<% end %>
		end
	
		def get_wait_time_per_product_page
		<% if site["wait_time_per_product_page"] %>
			return <%= site["wait_time_per_product_page"] %>
		<% else %>
			return 2
		<% end %>
		end
		
		def get_num_of_product_options
		<% if site["product_options"] %>		
			return <%= site["product_options"].length %>
		<% else %>
			return 0
		<% end %>		
		end
		
		#def get_product_option_link_depth
		#		<% if site["product_options"]%>
		#		  product_options_link_depths = Array.new
		#		  <% site["product_options"].each_with_index do |option, idx| %>		
		#			product_options_link_depths[<%=idx+1%>]= <%= (option[2]? option[2] : 0 )%>
		#		  <% end %>
		#			return product_options_link_depths
		#		<% else %>
		#			return nil
		#		<% end %>	
		#end
		
		def get_product_keywords_to_exclude
		<% if site["product_keywords_to_exclude"] %>		
			return <%= site["product_keywords_to_exclude"] %>
		<% else %>
			return []
		<% end %>		
		end
		
		def get_out_of_stock_msg
		<% if site["out_of_stock_msg"] %>		
			return "<%= site["out_of_stock_msg"] %>"
		<% else %>
			return nil
		<% end %>		
		end
		
		def has_product_options_preselect
		<% if site["product_options_preselect"] %>		
			return true
		<% else %>
			return false
		<% end %>		
		end
		
		def show_log
		<% if site["show_log"] %>
			return <%= site["show_log"] %>
		<% else %>
			return false
		<% end %>
		end 
		
		def ignore_cat_tracked_as_other_page
		<% if site["ignore_cat_tracked_as_other_page"] %>
			return <%= site["ignore_cat_tracked_as_other_page"] %>
		<% else %>
			return false
		<% end %>
		end 
		
		def get_add_to_basket_error_msg
		<% if site["add_to_basket_error_msg"] %>		
			return "<%= site["add_to_basket_error_msg"] %>"
		<% else %>
			return nil
		<% end %>	
		end
		
		
		def is_static_test_enabled
		<% if site["enable_static_test"] %>
			return <%= site["enable_static_test"] %>
		<% else %>
			return false
		<% end %>
		end 
		
		def get_static_test_cat_url
		<% if site["static_test_cat_url"] != "" %>
			return "<%= site["static_test_cat_url"] %>"
		<% else %>
			return ""
		<% end %>
		end
		
		def get_static_test_prod_url
		<% if site["static_test_prod_url"] != nil %>
			return "<%= site["static_test_prod_url"] %>"
		<% else %>
			return ""
		<% end %>
		end 
		
		def get_custom_search_js
		<% if site["custom_search_js"] != nil %>
			return "<%= site["custom_search_js"] %>"
		<% else %>
			return nil
		<% end %>
		end 
		
		def has_search_button
		<% if site["search_button"] %>		
			return true
		<% else %>
			return false
		<% end %>		
		end
		
		def ignore_single_product_option
		<% if site["ignore_single_product_option"] %>		
			return true
		<% else %>
			return false
		<% end %>		
		end
		
		def get_ab_group
		<% if site["ab_test_group"] != nil %>
			return "<%= site["ab_test_group"] %>"
		<% else %>
			return nil
		<% end %>
		end 
		
		def get_custom_basket_js
		<% if site["custom_basket_js"] != nil %>
			return "<%= site["custom_basket_js"] %>"
		<% else %>
			return nil
		<% end %>
		end 
		
		
    end  
end
<% end %>