#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Tedbaker
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.tedbaker.com/shoppingbasket/"
      direct_url URL
      
      link(:basket_checkout, :href => "/uk/cart/checkout")
      
       
      
      def remove_product_links
        link_elements(:class => "link item_remove")
      end 
      
    end  
end
