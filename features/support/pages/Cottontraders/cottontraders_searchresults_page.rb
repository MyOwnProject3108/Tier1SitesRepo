module Cottontraders
    class SearchResultsPage
      include PageObject
      
      div(:product_container, :class => 'peeriusProducts')
      
      # This item should return an array of SMART-rec containers
      def smartRecs       
          product_container_element.when_visible.div_elements(:class => 'peeriusProduct')
      end 
      
    end  
end