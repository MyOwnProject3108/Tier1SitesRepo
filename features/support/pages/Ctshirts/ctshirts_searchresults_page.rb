module Ctshirts
    class SearchResultsPage
      include PageObject
       
      # Returns true if the page is actually a search result page
      def valid?
        current_url.include?("SearchNoResults") || current_url.include?("productlisting")
      end
      
      def smartRecs       
          r = div_element(:id => 'search__').when_visible.unordered_list_element
      end 
      
    end  
end