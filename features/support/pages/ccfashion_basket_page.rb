#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Ccfashion
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.ccfashion.co.uk/pws/ShippingOptions.ice"
      direct_url URL
      
      image(:basket_checkout, :alt => "checkout")
      
       
      
      def remove_product_links
        image_elements(:alt => "remove product from my bag")
      end 
      
    end  
end