#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Lensspirit
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.lensspirit.de/Cart/"
      direct_url URL
      
      button(:basket_checkout, :value => "Go to Checkout")
      
       
      
      def remove_product_links
        link_elements(:class => "icon-text icon-type-delete")
      end 
      
    end  
end