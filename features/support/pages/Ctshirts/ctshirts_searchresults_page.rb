module Ctshirts
    class SearchResultsPage
      include PageObject

      def smartRecs       
          r = div_element(:id => 'search__').when_visible.unordered_list_element
      end 
      
    end  
end