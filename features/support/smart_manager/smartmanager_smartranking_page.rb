module Smartmanager
  
    class SmartrankingPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/adaptivelistings/list.pagex"
      direct_url URL
		table(:page_identifier, :class => "rctable")
		a(:create_ranking_submit, :class => "submit120")
	 	 
	 def tracked_as
	   return "SmartrankingPage"
	  end

			  
    end  
end

