#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Frenchconnection
  
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.frenchconnection.com/product/Woman+Collections+Shoes/SFBBD/Tamara+Sandals.htm"
      direct_url URL
	  # site elements
      
      button(:add_to_basket, :id=> "addToBasket")
       
      # page elements
      
      button(:add_to_basket, :name => "addToBasket")
      
    end  
end
