module Cottontraders
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      div(:page_identifier, :id => "productdetail")
      unordered_list(:smart_recs) do |page|
        page.div_element(:class => "featprods").unordered_list_element
      end 
      div(:smart_content, :class => "peeriusContent")

      direct_url "http://www.cottontraders.co.uk/invt/aa12190"
    end  
	
end