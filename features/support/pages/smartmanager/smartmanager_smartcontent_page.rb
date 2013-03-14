module Smartmanager
  
    class SmartcontentPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/creative/list.page"
      direct_url URL
	  table(:page_identifier, :class => "rctable")
	 	 
	 def tracked_as
	   return "SmartcontentPage"
	  end

			  
    end  
end

