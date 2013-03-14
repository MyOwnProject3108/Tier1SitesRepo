module Smartmanager
  
    class ReportingPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/analytics/recsreport.page"
      direct_url URL
	  div(:page_identifier, :id => "content")
	 	 
	 def tracked_as
	   return "ReportingPage"
	  end

			  
    end  
end

