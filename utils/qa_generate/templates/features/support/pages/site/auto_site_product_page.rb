#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v<%= QA_GENERATE_VERSION %> on <%= Time.now %>
#

module <%= site["site_name"].capitalize %>
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      URL = "<%= site["product_URL"] %>"
      direct_url URL            
    end  
end