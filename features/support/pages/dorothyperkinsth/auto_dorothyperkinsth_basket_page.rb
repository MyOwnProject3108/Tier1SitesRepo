#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Dorothyperkinsth
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://th.dorothyperkins.com/webapp/wcs/stores/servlet/OrderItemDisplay?catalogId=35099&langId=-1&storeId=13081"
      direct_url URL
      
      link(:basket_checkout, :id => "checkout_submit_bottom")
      
       
      
      def remove_product_links
        link_elements(:class => "remove_bag_item")
      end 
      
    end  
end
