#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Burtonsandpit
  
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://br.sandpit.arcadiagroup.ltd.uk/webapp/wcs/stores/servlet/ProductDisplay?langId=-1&storeId=12551&catalogId=33052&productId=12229610&categoryId=1125589&parent_category_rn=208974"
      direct_url URL
	  # site elements
       
      # page elements
      
      button(:add_to_basket, :id=> "btn_add_2_shop_cart")
      
    end  
end
