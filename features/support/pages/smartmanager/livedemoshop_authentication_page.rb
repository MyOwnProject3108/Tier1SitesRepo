module Demoshop
  #This class is for providing the authentication for livedemoshop
    class AuthenticationPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://demoshop:P@ssw0rd@demo.peerius.com"
      direct_url URL
	  
	  
	 	 
	 def tracked_as
	   return "AuthenticationPage"
	  end

			  
    end  
end




