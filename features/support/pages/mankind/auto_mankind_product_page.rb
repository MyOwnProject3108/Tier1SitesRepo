#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#

module Mankind
  
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.mankind.co.uk/american-crew-forming-cream-85gm/10360120.html"
      direct_url URL
      
      link(:add_to_basket, :class=> "productbuy")          
    end  
end