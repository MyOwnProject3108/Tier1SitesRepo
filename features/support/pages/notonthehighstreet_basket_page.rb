#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Notonthehighstreet
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.notonthehighstreet.com/cart"
      direct_url URL
      
      button(:basket_checkout, :name => "button_checkout")
      
       
      
      def remove_product_links
        link_elements(:class => "remove_item_button secondary button small skinny mobile_hide")
      end 
      
    end  
end