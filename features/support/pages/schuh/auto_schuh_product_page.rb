#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#

module Schuh
  
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www1.schuh.co.uk/blue-adidas-ac-backpack/7507335060/"
      direct_url URL
      
      button(:add_to_basket, :id=> "ctl00_ContentPlaceHolder1_btnAddToBasket")          
    end  
end