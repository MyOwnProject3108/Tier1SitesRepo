module PeeriusDebugInfo
    include PageObject
   
    # Returns the tracking page type for the page
	  def	tracked_as
		  Watir::Wait.until { @browser.td(:id => 'trackInfo').visible? }
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
 
end
