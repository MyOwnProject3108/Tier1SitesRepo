module Wallis
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      div(:page_identifier, :class => "product_detail")
      div(:smart_recs) do |page|
        page.div_element(:class => "association_group").div_elements(:class => "associated_product")
      end
      
      direct_url "http://www.wallis.co.uk/webapp/wcs/stores/servlet/ProductDisplay?beginIndex=1&viewAllFlag=&catalogId=33058&storeId=12557&productId=7554304&langId=-1&sort_field=Relevance&categoryId=209168&parent_categoryId=&pageSize=20"           
    end  
end