#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Topmansandpit
  
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://tm.sandpit.arcadiagroup.ltd.uk/webapp/wcs/stores/servlet/ProductDisplay?beginIndex=0&viewAllFlag=&catalogId=33056&storeId=12555&categoryId=688234&parent_category_rn=207300&productId=10830588&langId=-1"
      direct_url URL
	  # site elements
       
      # page elements
      
      button(:add_to_basket, :id=> "btn_add_2_shop_cart")
      
    end  
end
