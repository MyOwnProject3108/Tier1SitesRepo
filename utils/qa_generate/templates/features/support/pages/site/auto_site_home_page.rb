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
      
      <% if page["login_link"] %>
        <%= page["login_link"][0] %>(:login_link, <%= page["login_link"][1] %>)
      <% end %>
	    <%= page["search_field"][0] %>(:search, <%= page["search_field"][1] %>)
      <% if page["category_menu"] %>
        <%= page["category_menu"][0] %>(:category_menu, <%= page["category_menu"][1] %>)
      <% end %>
      <% if page["product_links"] %>
	    <%= page["product_links"][0] %>(:product_links, <%= page["product_links"][1] %>)
      <% end %>
      #<% if page["product_link_filter"] %>
	  # @product_link_filter = "teststr" # {'<%= page["product_link_filter"][0] %>' => '<%= page["product_link_filter"][1] %>'}
	  # def product_link_filter
		#	puts @product_link_filter
	  # end  
      #<% end %>
    end  
end
<% end %>