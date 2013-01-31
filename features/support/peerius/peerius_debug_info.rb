module PeeriusDebugInfo
    include PageObject

	td(:tracked_as_type, :id => 'trackInfo')   
     
    # Returns the tracking page type for the page
	def	tracked_as
		return tracked_as_type 
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
