module Ctshirts
    class CategoryPage
      include PageObject
      
      div(:productListing, :id => "ctl00_contentBody_productListingSection")
      
      # Returns true if the page is actually a category page
      def valid?
        return productListing?
      end
    end  
end