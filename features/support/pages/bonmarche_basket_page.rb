#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Bonmarche
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.bonmarche.co.uk/bin/venda?ex=co_wizr-shopcart&bsref=shop&log=22"
      direct_url URL
      
      button(:basket_checkout, :class => "button right btCheckout submit")
      
       
      
      def remove_product_links
        image_elements(:alt => "Remove")
      end 
      
    end  
end