#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#

module Topmanus
  
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://us.topman.com/webapp/wcs/stores/servlet/ProductDisplay?beginIndex=1&viewAllFlag=&catalogId=33059&storeId=13051&productId=8970499&langId=-1&sort_field=Relevance&categoryId=207493&parent_categoryId=207478&pageSize=20"
      direct_url URL
      
      button(:add_to_basket, :id=> "btn_add_2_shop_cart")          
    end  
end