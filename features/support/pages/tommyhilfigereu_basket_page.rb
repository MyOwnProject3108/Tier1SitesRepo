#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Tommyhilfigereu
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://eu.tommy.com/on/demandware.store/Sites-EU-Site/default/Cart-Show"
      direct_url URL
      
      button(:basket_checkout, :name => "dwfrm_cart_checkoutCart")
      
       
      
      def remove_product_links
        button_elements(:class => "remove no_print")
      end 
      
    end  
end