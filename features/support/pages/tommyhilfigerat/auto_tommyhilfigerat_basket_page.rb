#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Tommyhilfigerat
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://at.tommy.com/on/demandware.store/Sites-AT-Site/de_AT/Cart-Show"
      direct_url URL
      
      button(:basket_checkout, :name => "dwfrm_cart_checkoutCart")
      
       
      
      def remove_product_links
        button_elements(:class => "remove no_print")
      end 
      
    end  
end
