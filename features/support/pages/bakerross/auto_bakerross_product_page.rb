#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#

module Bakerross
  
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.bakerross.co.uk/cat_id/CURRAUST/product-Aboriginal-Window-Decorations-EV563.htm"
      direct_url URL
      
      link(:add_to_basket, :href=> "javascript:document.skuFORM1.submit()")          
    end  
end