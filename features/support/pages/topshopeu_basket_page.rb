#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Topshopeu
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://eu.topshop.com/webapp/wcs/stores/servlet/OrderItemDisplay?catalogId=34058&langId=-1&storeId=13058"
      direct_url URL
      
      link(:basket_checkout, :text => "Checkout")
      
       
      
      def remove_product_links
        link_elements(:class => "remove_bag_item")
      end 
      
    end  
end
