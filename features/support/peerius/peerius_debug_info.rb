module PeeriusDebugInfo
    include PageObject

	td(:tracked_as_type, :id => 'trackInfo')   
        
	def	tracked_as
		return tracked_as_type 
	end
 
end