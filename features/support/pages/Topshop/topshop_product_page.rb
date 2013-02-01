module Topshop
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      div(:page_identifier, :id => "prod_id")
      ul(:smart_recs, :id => "peeriusRecs") 
      div(:smart_content, :class => "peeriusContent")
	  button(:add_to_basket, :id=> "btn_add_2_shop_cart")

      direct_url "http://www.topshop.com/webapp/wcs/stores/servlet/ProductDisplay?beginIndex=1&viewAllFlag=&catalogId=33057&storeId=12556&productId=9073967&langId=-1&sort_field=Relevance&categoryId=208523&parent_categoryId=203984&pageSize=20"
		
    end  
	
	
	
end