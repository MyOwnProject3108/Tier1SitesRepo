#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Walliseu
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://euro.wallisfashion.com/webapp/wcs/stores/servlet/OrderItemDisplay?catalogId=34092&langId=-1&storeId=13075"
      direct_url URL
      
      link(:basket_checkout, :text => "Checkout")
      
       
      
      def remove_product_links
        link_elements(:class => "remove_bag_item")
      end 
      
    end  
end
