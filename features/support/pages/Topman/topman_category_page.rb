module Topman
    class CategoryPage
      include PageObject
      include PeeriusHelper
      
      div(:page_identifier, :id => "ctl00_contentBody_productListingSection")
      div(:smart_content, :class => "peeriusContent")
      ul(:smart_recs, :id => "peeriusRecs")
      
      direct_url "http://www.topman.com/webapp/wcs/stores/servlet/CatalogNavigationSearchResultCmd?catalogId=33056&storeId=12555&langId=-1&viewAllFlag=false&sort_field=Relevance&categoryId=207181&parent_categoryId=207169&beginIndex=1&pageSize=20"
    end  
end