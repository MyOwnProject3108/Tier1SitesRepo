module Smartmanager
  
    class AdaptivecontentPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/smartmanager/adaptivecontent/edit.page"
      direct_url URL
		h4(:page_identifier, :text => "Setup")
		text_field(:testsetup, :id => "name")
		a(:criterialink_submit, :href => "#criteriaoptions", :index => 0)
		a(:criteria2link_submit, :href => "#criteriaoptions", :index => 1)
		#text_field(:rule1, :class => "exp_right_hand the_value_input input-small autosearch-original original disabled")
		text_field(:rule1, :xpath => "//div[@id='traffic']/table/tbody/tr/td[3]/div/div[3]/ul/li/ul/li/div/div[1]/input")
		button(:setup_submit, :class => "btn remove-btn save_changes btn-primary pull-right")
		span(:add_a_new_row, :class => "text-success unselectable", :index => 1)
		#div(:rule1, :class => "autosearch-wrap autosearch exp_right_hand_autocomplete clear clearfix")
		text_area(:rule2, :name => "creativeConfigs.itemsForView[0].expression")
				

	 	 
	 def tracked_as
	   return "AdaptivecontentPage"
	  end
	  
				  
    end  
end

