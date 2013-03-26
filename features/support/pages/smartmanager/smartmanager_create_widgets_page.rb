module Smartmanager
  #This class is to create new widgets
    class CreatewidgetPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/editwidget.page"
      direct_url URL
	  div(:page_identifier, :id => "content")
	  text_field(:widgetname, :id => "name", :index => 0)
	  text_field(:widgetaliasname, :id => "alias", :index => 0)
	  select_list(:widgetalgorithm, :class => "widgetsSelect")
      select_list(:htmltemplate, :name => "html")
	  select_list(:csstemplate, :name => "css")
	  text_field(:maxrecs, :id => "maxrecs")
	  select_list(:injectionpoint, :id => 'injectionPoint')
	  button(:try_submit, :class => 'submit120')
	  em(:unsuccess_message, :class => "error")
	  
	 def tracked_as
	   return "CreatewidgetPage"
	  end

			  
    end  
end

