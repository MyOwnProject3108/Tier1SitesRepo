#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Superdryfi
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.superdry.fi/shopping-bag"
      direct_url URL
      
      link(:basket_checkout, :class => "checkout-link checkout_btn")
      
       
      
      def remove_product_links
        button_elements(:class => "cart-delete button")
      end 
      
    end  
end
