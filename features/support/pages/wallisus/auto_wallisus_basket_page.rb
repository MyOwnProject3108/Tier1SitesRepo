#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Wallisus
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.wallisfashion.com/webapp/wcs/stores/servlet/OrderItemDisplay?catalogId=34094&langId=-1&storeId=13076"
      direct_url URL
      
      link(:basket_checkout, :id => "checkout_submit_bottom")
      
       
      
      def remove_product_links
        link_elements(:class => "remove_bag_item")
      end 
      
    end  
end
