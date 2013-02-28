module Smartmanager
  
    class MerchandisingPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/merchandising/overview/list.page"
      direct_url URL
	  table(:page_identifier, :id => "merchandisingtable")
	 	 
	 def tracked_as
	   return "MerchandisingPage"
	  end

			  
    end  
end

