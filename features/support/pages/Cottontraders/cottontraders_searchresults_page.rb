module Cottontraders
    class SearchResultsPage
      include PageObject

      def smartRecs       
          r = div_element(:class => 'peeriusProducts').when_visible(30).div_elements
      end 
      
    end  
end