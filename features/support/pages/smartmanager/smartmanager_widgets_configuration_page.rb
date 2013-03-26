module Smartmanager
  #This class calls after saving the widgets
    class ConfigurationPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/savewidgets.page"
      direct_url URL
	  div(:page_identifier, :id => "content")
	  p(:widget_success_message, :class => "message")
	  #a(:back_submit, :href => "welcome-admin.page")
	  a(:widget_submit, :href => "welcome-admin.page")
	  
	
	 	 
	 def tracked_as
	   return "ConfigurationPage"
	  end

			  
    end  
end

