#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Frenchconnectionus
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://usa.frenchconnection.com/basket.htm"
      direct_url URL
      
      link(:basket_checkout, :id => "ctl00_ctl00_globalmaincontent_mainContent_hlCheckout")
      
       
      
      def remove_product_links
        link_elements(:class => "removeFromBasketButton")
      end 
      
    end  
end
