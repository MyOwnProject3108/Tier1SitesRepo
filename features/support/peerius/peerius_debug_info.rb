module PeeriusDebugInfo
    include PageObject
   
    # Returns the tracking page type for the page
	  def tracked_as
		  sleep 2
          Watir::Wait.until { @browser.td(:id => 'trackInfo').exists? }
          return @browser.td(:id => 'trackInfo').text 
	  end
    
    # Returns an array of the recs that appear in the debug info 
    def debug_recs
        index = 1
        recs = []

        while @browser.td(:id, "rec"+index.to_s+"RefCode").exists? do
            recs.push(index)
            index += 1
        end

        return recs
    end
 
 
	def debug_widget_name
	 return @browser.h2(:xpath => "//*[@id='peeriusDebug']/table[2]/tbody/tr[1]/th/h2").text
	end
end
