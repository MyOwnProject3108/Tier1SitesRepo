module Smartmanager
    class HomePage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/welcome.page?goodBrowser=true"
      direct_url URL
	  
	  div(:page_identifier, :id => "welcome")
	  
	  def tracked_as
	   return "HomePage"
	  end
	  	          	          
    end  
end

