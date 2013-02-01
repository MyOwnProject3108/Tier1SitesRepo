module Topshop
    class CategoryPage
      include PageObject
      include PeeriusHelper
      
      #div(:page_identifier, :id => "ctl00_contentBody_productListingSection")
      #div(:smart_content, :class => "peeriusContent")
      #ul(:smart_recs, :id => "peeriusRecs")
      
      direct_url "http://www.topshop.com/webapp/wcs/stores/servlet/CatalogNavigationSearchResultCmd?catalogId=33057&storeId=12556&langId=-1&viewAllFlag=false&sort_field=Relevance&categoryId=208523&parent_categoryId=203984&beginIndex=1&pageSize=20"
    end  
end