#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Evans
  
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.evans.co.uk/en/evuk/product/clothing-250468/knitwear-250496/evans-blue-2-in-1-jumper-2968588?bi=1&ps=24"
      direct_url URL
	  # site elements
      
      button(:add_to_basket, :xpath=> "/html/body/div/div[3]/div[2]/div/div[3]/div/form/ul/li/input")
       
      # page elements
      
      button(:add_to_basket, :id=> "btn_add_2_shop_cart")
      
    end  
end
