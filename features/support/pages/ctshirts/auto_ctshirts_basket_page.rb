#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Ctshirts
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.ctshirts.co.uk/Basket.aspx"
      direct_url URL
      
      button(:basket_checkout, :id => "ctl00_contentBody_submit")
      
       
      
      def remove_product_links
        link_elements(:class => "remove")
      end 
      
    end  
end
