#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Topshopsg
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://sg.topshop.com/webapp/wcs/stores/servlet/OrderItemDisplay?catalogId=35111&langId=-1&storeId=13087"
      direct_url URL
      
      link(:basket_checkout, :text => "Checkout")
      
       
      
      def remove_product_links
        link_elements(:class => "remove_bag_item")
      end 
      
    end  
end
