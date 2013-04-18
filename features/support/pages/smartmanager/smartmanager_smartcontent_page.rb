module Smartmanager
  
    class SmartcontentPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/creative/list.page"
      direct_url URL
	    table(:page_identifier, :class => "rctable")
	    a(:create_content_submit, :class => "submit120")
	 	 
	 def tracked_as
	   return "SmartcontentPage"
	  end

			  
    end  
end

