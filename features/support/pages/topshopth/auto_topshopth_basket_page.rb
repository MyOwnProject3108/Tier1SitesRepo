#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Topshopth
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://th.topshop.com/webapp/wcs/stores/servlet/OrderItemDisplay?catalogId=35115&langId=-1&storeId=13089"
      direct_url URL
      
      link(:basket_checkout, :text => "Checkout")
      
       
      
      def remove_product_links
        link_elements(:class => "remove_bag_item")
      end 
      
    end  
end
