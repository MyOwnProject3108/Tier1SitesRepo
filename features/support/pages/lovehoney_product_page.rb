#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Lovehoney
  
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.lovehoney.co.uk/product.cfm?p=596"
      direct_url URL
	  # site elements
      
      button(:add_to_basket, :class=> "button std-arrow double-decker")
       
      # page elements
      
      button(:add_to_basket, :class=> "std-arrow")
      
    end  
end