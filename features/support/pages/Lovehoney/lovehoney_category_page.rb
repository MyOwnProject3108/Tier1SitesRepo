module Lovehoney
    class CategoryPage
      include PageObject
      include PeeriusHelper
      
      div(:page_identifier, :id => "ctl00_contentBody_productListingSection")
      div(:smart_content, :class => "peeriusContent")
      ul(:smart_recs, :id => "peeriusRecs")
      
      direct_url "http://www.ctshirts.co.uk/mens-suits/mens-business-suits?q=peerius|||||||||||||||"
    end  
end