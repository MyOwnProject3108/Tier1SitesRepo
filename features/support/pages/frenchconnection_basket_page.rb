#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Frenchconnection
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.frenchconnection.com/basket.htm"
      direct_url URL
      
      link(:basket_checkout, :text => "go to checkout")
      
       
      
      def remove_product_links
        link_elements(:class => "removeFromBasketButton")
      end 
      
    end  
end