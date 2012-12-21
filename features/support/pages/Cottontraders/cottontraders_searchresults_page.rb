module Cottontraders
    class SearchResultsPage
      include PageObject
      include PeeriusHelper
      
      div(:page_identifier, :class => "searchContent")
      div(:smart_recs) do |page|
          page.div_element(:class => "peeriusProducts").div_elements(:class => 'peeriusProduct')
      end    
      div(:smart_content, :class => "peeriusContent")
        
    end  
end