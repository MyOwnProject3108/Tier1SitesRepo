module Smartmanager
  
    class AdaptivecontentPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/smartmanager/adaptivecontent/edit.page"
      direct_url URL
		h4(:page_identifier, :text => "Setup")
		text_field(:testsetup, :id => "name")
		a(:criterialink_submit, :href => "#criteriaoptions")
				

	 	 
	 def tracked_as
	   return "AdaptivecontentPage"
	  end
	  
				  
    end  
end

