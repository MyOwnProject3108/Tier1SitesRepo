module Smartmanager
  
    class SmartcontentPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/creative/list.page"
      direct_url URL
	   # table(:page_identifier, :class => "rctable")
	   li(:page_identifier, :text => "Creatives")
	    a(:create_content_submit, :class => "submit120")
	    a(:setup_link, :href => "/tracker/shop-admin/dynamiccontent/list.page")
	 def tracked_as
	   return "SmartcontentPage"
	  end

			  
    end  
end

