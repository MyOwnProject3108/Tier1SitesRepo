module Ctshirts
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      div(:page_identifier, :id => "prod_id")
      ul(:smart_recs, :id => "peeriusRecs") 
      div(:smart_content, :class => "peeriusContent")
      
      # How to get to a specific product
      direct_url "http://www.ctshirts.co.uk/men%27s-ties/men%27s-woven-silk-ties/Purcell-navy,-red-and-royal-double-stripe-woven-tie?q=peerius||TW838NAV|||||||||||||"
    end  
	
end