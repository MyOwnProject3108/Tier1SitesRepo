module Smartmanager
  #This class is for available widgets
    class WidgetsPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/listwidgets.page"
      direct_url URL
	  div(:page_identifier, :id => "content")
	  a(:new_widget, :href => "editwidget.page")
	  a(:save_widget, :href => "savewidgets.page")
	  a(:edit_submit, :text => "Edit")
	  a(:duplicate_submit, :text => "Duplicate")
	  a(:delete_submit, :text => "Delete", :index => 1)
	  a(:menu_submit, :text => "Menu")
	  
	 	 
	 def tracked_as
	   return "WidgetsPage"
	  end

			  
    end  
end
