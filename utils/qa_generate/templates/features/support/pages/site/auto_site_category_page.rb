<% if site["ignore"] or site["ignore_web"]%>
#ignore
<% end %>
#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v<%= QA_GENERATE_VERSION %>
#

<% page = site["category_page"] %>
module <%= site["site_name"].capitalize %>
  
    class CategoryPage
      include PageObject
      include PeeriusHelper
      
      URL = "<%= page["URL"] %>"
      direct_url URL            
    end  
end