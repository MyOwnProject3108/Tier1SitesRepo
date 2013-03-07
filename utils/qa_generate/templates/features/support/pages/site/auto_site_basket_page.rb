<% if site["ignore"] or site["ignore_web"]%>
#ignore
<% end %>
#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v<%= QA_GENERATE_VERSION %>
#

<% page = site["basket_page"] %>
module <%= site["site_name"].capitalize %>
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "<%= page["URL"] %>"
      direct_url URL
      
      <%= page["basket_checkout"][0] %>(:basket_checkout, <%= page["basket_checkout"][1] %>)            
    end  
end