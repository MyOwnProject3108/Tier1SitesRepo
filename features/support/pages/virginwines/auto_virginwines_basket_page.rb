#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#

module Virginwines
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.virginwines.co.uk/cart/sc_main.jsp"
      direct_url URL
      
      button(:basket_checkout, :name=> "create_order")            
    end  
end