#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Evansde
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.evansmode.de/webapp/wcs/stores/servlet/OrderItemDisplay?catalogId=34082&langId=-3&storeId=13070"
      direct_url URL
      
      link(:basket_checkout, :text => "Zur Kasse")
      
       
      
      def remove_product_links
        link_elements(:class => "remove_bag_item")
      end 
      
    end  
end
