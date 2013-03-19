<% if site["ignore"] or site["ignore_web"]%>
#ignore
<% end %>
#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v<%= QA_GENERATE_VERSION %>
#


<% page = site["login_page"] %>
module <%= site["site_name"].capitalize %>
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "<%= debug_url(page["URL"]) %>"
      direct_url URL
      
  	  <%= page["username_field"][0] %>(:username, <%= page["username_field"][1] %>)
      <%= page["password_field"][0] %>(:password, <%= page["password_field"][1] %>)  
  	  <%= page["login_submit"][0] %>(:login_submit, <%= page["login_submit"][1] %>)           
    end  
end

