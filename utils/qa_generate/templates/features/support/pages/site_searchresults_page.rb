<% if site["ignore"] or site["ignore_web"]%>
#ignore
<% end %>
#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v<%= QA_GENERATE_VERSION %>
#

<% if site["searchresults_page"] %>
<% page = site["searchresults_page"] %>
module <%= site["site_name"].capitalize %>
  
    class SearchResultsPage
      include PageObject
      include PeeriusHelper
      
      URL = "<%= debug_url(page["URL"]) %>"
      direct_url URL            
    end  
end
<% end %>