#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v<%= QA_GENERATE_VERSION %> on <%= Time.now %>
#

module <%= site["site_name"].capitalize %>
    class HomePage
      include PageObject
      include PeeriusHelper
      
      URL = "<%= site["home_page"]["URL"] %>"
      direct_url URL
      
      link(:login_link, <%= site["home_page"]["login_link"] %>)            
    end  
end