#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Missselfridgeuk
  
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.missselfridge.com/en/msuk/product/clothing-299047/dresses-299060/floral-trumpet-hem-dress-2943782?bi=1&ps=40"
      direct_url URL
	  # site elements
      
      button(:add_to_basket, :id=> "btn_add_2_shop_cart")
       
      # page elements
      
      button(:add_to_basket, :id => "btn_add_2_shop_cart")
      
    end  
end
