module Ctshirts
    class CategoryPage
      include PageObject
      
      div(:productListing, :id => "ctl00_contentBody_productListingSection")
      
      def is_categorypage?
        #return productlisting.exists?
        return true
      end
    end  
end