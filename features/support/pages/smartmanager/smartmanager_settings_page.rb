module Smartmanager
  
    class SettingsPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/settings/settings.page"
      direct_url URL
	  div(:page_identifier, :id => "content")
	 	 
	 def tracked_as
	   return "SettingsPage"
	  end

			  
    end  
end

