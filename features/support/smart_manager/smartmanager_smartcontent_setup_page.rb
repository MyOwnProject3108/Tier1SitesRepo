# This class is for smart content configuration page after create click
module Smartmanager
  
    class SmartcontentSetupPage
      include PageObject
      include PeeriusHelper
      
        URL = "https://#{FigNewton.base_url}/tracker/shop-admin/dynamiccontent/list.page"
        direct_url URL
		h3(:page_identifier, :text => "Setup")
		a(:create_dynamiccontent_link, :href => "edit.page")
		
	#	def delete_rules(words)
	#	image_elements(:src => "/tracker/images/skin2/bin.png").click
	 #	 end
		 
	 def tracked_as
	   return "SmartcontentSetupPage"
	  end
	  
				  
    end  
end

