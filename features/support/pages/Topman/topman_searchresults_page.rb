module Topman
    class SearchResultsPage
      include PageObject
	  include PeeriusDebugInfo
      
	  # If page_identifier exists then the page is of the correct type
      div(:page_identifier, :id => "search__")
	  
	  #Returns first 4 recs with pProduct class
      div(:smart_recs) do |page|
          page.div_element(:id => "search__").div_elements(:class => 'pProduct') << page.div_element(:class => "pProductLast")
      end 
	  	  
      div(:smart_content, :class => "peeriusContent")
	  
	  # Returns true if the page is actually a page of the expected type
      def valid?
          current_url.include?("searchTerm=")
      end
	  
	  # Returns true if SMART-recs are present
	  def smartRecsEnabled?
          smart_recs_element.count > 0 
      end
      
      # Returns true if SMART-content is present
      def smartContentEnabled?
          smart_content_element.count > 0 
      end
	  
	  # Should return an array of SMART-recs
	  def smartRecs
          smart_recs_element
      end
      
      # Should return an array of SMART-content
      def smartContent
          smart_content_element
      end
        
    end  
end