module Smartmanager
  #This class is for per page/decide page
    class PerPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/widgetsperpage.page"
      direct_url URL
	  div(:page_identifier, :id => "content")
	  select_list(:savedwidget, :name => "widgets['PRODUCT'][0]")
	  
	 def tracked_as
	   return "PerPage"
	  end

			  
    end  
end

