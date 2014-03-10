module Smartmanager
  
    class RecrulesconfigPage
            
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/smartmanager/merchandising/edit.page"
      direct_url URL
	  h4(:page_identifier, :text => "Recommendation Rules")
	  button(:edit_rule_submit, :class => "btn btn-small pull-left edit-rule-settings-btn")
	  select_list(:exp_select_list, :class => "visual-input")
	  text_field(:merchrule1, :xpath => "//div[@id='sidebar']/ul/li/div[3]/div/div/ul/li/ul/li/div/div[1]/input")
	 li(:attr_list, :class => "rule-group curved-all last")
	 button(:merch_setup_submit, :id => "save_campaign")
	
	 	 
	 def tracked_as
	   return "RecrulesconfigPage"
	  end
				  
    end  
end


