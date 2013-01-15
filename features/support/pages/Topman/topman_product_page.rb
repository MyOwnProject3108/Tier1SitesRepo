module Topman
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      div(:page_identifier, :id => "prod_id")
      ul(:smart_recs, :id => "peeriusRecs") 
      div(:smart_content, :class => "peeriusContent")

      direct_url "http://www.topman.com/webapp/wcs/stores/servlet/ProductDisplay?beginIndex=1&viewAllFlag=&catalogId=33056&storeId=12555&productId=2680264&langId=-1&sort_field=Relevance&categoryId=207181&parent_categoryId=207169&pageSize=20"
    end  
	
end