#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Royalmint
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.royalmint.com/shop/shoppingbasket"
      direct_url URL
      
      button(:basket_checkout, :id => "maincontent_0_btnCheckOut")
      
       
      
      def remove_product_links
        link_elements(:class => "btn-del")
      end 
      
    end  
end
