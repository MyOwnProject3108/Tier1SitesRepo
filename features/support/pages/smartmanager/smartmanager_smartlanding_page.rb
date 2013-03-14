module Smartmanager
  
    class SmartlandingPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/dynamiclandingpage/campaign/list.page"
      direct_url URL
	  table(:page_identifier, :class => "rctable")
	 	 
	 def tracked_as
	   return "SmartlandingPage"
	  end

			  
    end  
end

