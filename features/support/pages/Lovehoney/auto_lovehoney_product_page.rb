#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.4
#

module Lovehoney
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.lovehoney.co.uk/product.cfm?p=2869"
      direct_url URL
      
      button(:add_to_basket, :class=> "std-arrow")          
    end  
end