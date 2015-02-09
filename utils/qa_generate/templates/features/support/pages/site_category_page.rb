<% if site["ignore"] or site["ignore_web"]%>
#ignore
<% end %>
#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v<%= QA_GENERATE_VERSION %>
#

<% if site["category_page"] %>
<% page = site["category_page"] %>
module <%= site["site_name"].capitalize %>
  
  class CategoryPage
      include PageObject
      include PeeriusHelper
      
      URL = "<%= debug_url(page["URL"]) %>"
      direct_url URL      


      def get_site_custom_js
        <% if site["site_custom_js"] != nil %>
          return "<%= site["site_custom_js"] %>"
        <% else %>
          return nil
        <% end %>
      end 
   end
end
<% end %>