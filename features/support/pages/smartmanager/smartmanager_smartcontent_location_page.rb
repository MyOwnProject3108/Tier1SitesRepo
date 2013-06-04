# This class is for smart content location page after create click
module Smartmanager
  
    class SmartcontentLocationPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/dynamiccontent/edit.page"
      direct_url URL
		h3(:page_identifier, :text => "Smart Content Locations Setup")
		text_field(:contentname, :name => "name")
		button(:add_content_submit, :value => "Add Content")
		#select_list(:creativeimage, :name => "creativeConfigs.itemsForView[0].creative", :value => "AutoTestCreative")
		text_area(:rule, :class => "autocomplete", :index => 0)
		text_area(:rule1, :class => "autocomplete", :index => 1)
		button(:save_button_submit, :value => "Save")
		button(:delete_submit, :name => "delete")
		em(:content_message, :class => "error")
		
	 	 
	 def tracked_as
	   return "SmartcontentLocationPage"
	  end
	  
				  
    end  
end

