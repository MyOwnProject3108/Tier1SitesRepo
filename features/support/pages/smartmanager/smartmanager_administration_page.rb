module Smartmanager
  
    class AdministrationPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/welcome-admin.page"
      direct_url URL
	  ul(:page_identifier, :id => "peeriusAdmin")
	  a(:list_widgets_submit, :href => "listwidgets.page")
	  a(:decide_widgets_submit, :href => "widgetsperpage.page")
	 	 
	 def tracked_as
	   return "AdministrationPage"
	  end

			  
    end  
end

