module Demoshop
  #This class is for livedemoshop product page
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://demo.peerius.com/index.php/prod-fn066red.html"
      direct_url URL
	  
	  
	 	 
	 def tracked_as
	   return "ProductPage"
	  end

			  
    end  
end




