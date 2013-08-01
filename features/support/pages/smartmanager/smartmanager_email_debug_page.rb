module Smartmanager
  
    class EmaildebugPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/er/debugInfo.page?e=webtest@mailinator.com&site=ctshirts&wid=2838&triggerId=10"
      direct_url URL
	 	 
	 def tracked_as
	   return "EmaildebugPage"
	  end
	
			  
    end  
end


