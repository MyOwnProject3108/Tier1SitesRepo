#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Topman
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.topman.com/webapp/wcs/stores/servlet/OrderItemDisplay?catalogId=33056&langId=-1&storeId=12555"
      direct_url URL
      
      link(:basket_checkout, :id => "checkout_submit_bottom")
      
       
      
      def remove_product_links
        link_elements(:class => "remove_bag_item")
      end 
      
    end  
end
