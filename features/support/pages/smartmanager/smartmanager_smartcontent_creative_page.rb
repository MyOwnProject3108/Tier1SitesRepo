# This class is for smart ranking configuration page after create click
module Smartmanager
  
    class SmartcontentCreativePage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/creative/edit.page"
      direct_url URL
		h3(:page_identifier, :text => "Create/Edit Creatives")
	    
	 	 
	 def tracked_as
	   return "SmartcontentCreativePage"
	  end

			  
    end  
end

