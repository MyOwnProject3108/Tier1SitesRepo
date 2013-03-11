module Smartmanager
  
    class AdministrationPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/welcome-admin.page"
      direct_url URL
	  ul(:page_identifier, :id => "peeriusAdmin")
	 	 
	 def tracked_as
	   return "AdministrationPage"
	  end

			  
    end  
end

