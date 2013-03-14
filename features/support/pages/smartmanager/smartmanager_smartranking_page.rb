module Smartmanager
  
    class SmartrankingPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/adaptivelistings/list.pagex"
      direct_url URL
	  table(:page_identifier, :class => "rctable")
	 	 
	 def tracked_as
	   return "SmartrankingPage"
	  end

			  
    end  
end

