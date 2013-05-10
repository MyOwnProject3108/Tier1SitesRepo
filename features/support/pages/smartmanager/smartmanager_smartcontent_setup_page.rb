# This class is for smart content configuration page after create click
module Smartmanager
  
    class SmartcontentSetupPage
      include PageObject
      include PeeriusHelper
      
        URL = "https://#{FigNewton.base_url}/tracker/shop-admin/dynamiccontent/list.page"
        direct_url URL
		h3(:page_identifier, :text => "Setup")
		a(:create_dynamiccontent_link, :href => "edit.page")
		
	 	 
	 def tracked_as
	   return "SmartcontentSetupPage"
	  end
	  
				  
    end  
end

