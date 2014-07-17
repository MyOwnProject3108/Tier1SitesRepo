module Smartmanager
  
    class AdministrationPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/welcome-admin.page"
      direct_url URL
	  ul(:page_identifier, :id => "peeriusAdmin")
	  a(:list_widgets_link, :href => "listwidgets.page")
	  # a(:list_widgets_link, :href => "listwidgets.page", :index => 0)
  a(:decide_widgets_link, :href => "widgetsperpage.page")
#a(:decide_widgets_link, :href => "widgetsperpage.page", :index => 1)
     a(:widget_submit, :href => "savewidgets.page")
	  a(:AB_group_submit, :href => 'abtesting/abtests.page')
	 	 
	 def tracked_as
	   return "AdministrationPage"
	  end

			  
    end  
end

