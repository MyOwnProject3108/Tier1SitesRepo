#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#

module Wallis
  
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.wallis.co.uk/webapp/wcs/stores/servlet/ProductDisplay?beginIndex=1&viewAllFlag=&catalogId=33058&storeId=12557&productId=7588619&langId=-1&sort_field=Relevance&categoryId=209668&parent_categoryId=209327&pageSize=20"
      direct_url URL
      
      button(:add_to_basket, :id=> "btn_add_2_shop_cart")          
    end  
end