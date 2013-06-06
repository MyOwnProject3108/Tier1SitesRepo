module Demoshop
  #This class is for livedemoshop home page
    class HomePage
      include PageObject
      include PeeriusHelper
      
      #URL = "http://demo.peerius.com"
	  URL = "http://demoshop:P@ssw0rd@demo.peerius.com"
      direct_url URL
	  
	  
	 	 
	 def tracked_as
	   return "HomePage"
	  end

			  
    end  
end




