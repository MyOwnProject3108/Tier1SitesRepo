#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Cooksongold
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.cooksongold.com/your_basket.jsp"
      direct_url URL
      
      link(:basket_checkout, :link_text => "Checkout", :index => 1)
      
       
      
      def remove_product_links
        link_elements(:title => "Remove Item")
      end 
      
    end  
end