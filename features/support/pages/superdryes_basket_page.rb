#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Superdryes
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.superdry.es/shopping-bag"
      direct_url URL
      
      link(:basket_checkout, :class => "checkout-link checkout_btn")
      
       
      
      def remove_product_links
        button_elements(:class => "cart-delete button")
      end 
      
    end  
end
