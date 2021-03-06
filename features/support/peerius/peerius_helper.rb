require_relative 'peerius_debug_info' 

module PeeriusHelper
    include PageObject
    include PeeriusDebugInfo
      
      # Returns true if SMART-recs are present
	    def smartRecsEnabled?
          smart_recs_element.count > 0 
      end
      
      # Returns true if SMART-content is present
      def smartContentEnabled?
          smart_content_element.count > 0 
      end
	  
	   # Returns true if SMART-Ranking is present
      def smartRankingEnabled?
          smart_ranking_element.count > 0 
      end
	  
	  # Should return an array of SMART-recs
	  def smartRecs
          smart_recs_element
      end
      
      # Should return an array of SMART-content
      def smartContent
          smart_content_element
      end
      
      def search_for term
          self.search = term
          self.search_text_field.respond_to?(:send_keys) ? self.search_text_field.send_keys(:enter) : @browser.send_keys('{ENTER}')
      end
 
      # Returns true if the page is actually a page of the expected type
      def valid?
          return page_identifier?
      end
      
      def add_SPR
        url_with_spr = self.current_url
        
        # Remove trailing slash from URL
        url_with_spr.gsub(/\/$/, '')
        
        if url_with_spr.include?("?") or url_with_spr.include?("&") 
          url_with_spr += "&spr=1"
        else
          url_with_spr += "?spr=1"
        end          
          
        #puts url_with_spr
        navigate_to url_with_spr
      end
	  
	  def add_AB_group(ab_group)
        url_with_ab = self.current_url
        
        # Remove trailing slash from URL
        url_with_ab.gsub(/\/$/, '')
        
        if url_with_ab.include?("?") or url_with_ab.include?("&") 
          url_with_ab += "&peerius_ab_group=" + ab_group.to_s 
        else
          url_with_ab += "?peerius_ab_group=" + ab_group.to_s
        end          
          
        #puts url_with_spr
        navigate_to url_with_ab
      end
      
      # Returns true if the page is actually a page of the expected type
	  def elem_exists(elem)
		return eval("@browser."+elem+".exists?")
      end

end