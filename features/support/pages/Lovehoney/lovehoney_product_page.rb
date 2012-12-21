module Lovehoney
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      div(:page_identifier, :class => "prod-description")
      ol(:smart_recs) do |page|
        page.div_element(:id => "peeriusRecs").div_element.ordered_list_elements(:class => "clearfix")
      end    
      div(:smart_content, :class => "peeriusContent")

      direct_url "http://www.lovehoney.co.uk/product.cfm?p=16661"
    end  
	
end