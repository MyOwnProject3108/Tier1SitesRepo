module Smartmanager
  
    class SmartcontentPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/creative/list.page"
      direct_url URL
	   # table(:page_identifier, :class => "rctable")
	   li(:page_identifier, :text => "Creatives")
	    a(:create_content_submit, :class => "submit120")
	#	img(:duplicate_submit, :src => "/tracker/images/skin2/bolean.png")
	#img(:duplicate_submit, :src => "/tracker/images/skin2/bolean.png")
	 	 
	 def tracked_as
	   return "SmartcontentPage"
	  end

			  
    end  
end

