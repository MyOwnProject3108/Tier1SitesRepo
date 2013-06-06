module Smartmanager
  
    class SmartcontentActivationPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/dynamiccontent/activate.page?id=8"
      direct_url URL
	   h3(:page_identifier, :text => "Activate")
	   button(:activate_content, :value => "Activate")
		
	 def tracked_as
	   return "SmartcontentActivationPage"
	  end

			  
    end  
end

