module Smartmanager
  
    class RecrulesconfigPage
            
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/smartmanager/merchandising/edit.page"
      direct_url URL
	  h4(:page_identifier, :text => "Recommendation Rules")
	  
	  
	 # select_list(:exp_submit, :class => "exp_left_hand")
	 # select_list(:set_expression, :text => "Please Select")
	  
	  button(:edit_rule_submit, :class => "btn btn-small pull-left edit-rule-settings-btn")
	  
	  select_list(:exp_select_list, :class => "visual-input")
	  text_field(:merchrule1, :xpath => "//div[@id='sidebar']/ul/li/div[3]/div/div/ul/li/ul/li/div/div[1]/input")
	 # text_area(:ta1, :name => "rule_expression_1")
	 li(:attr_list, :class => "rule-group curved-all last")
	 # text_field(:numwidgets, :id => "howMany")
	 # button(:create_email1_submit, :id => "mail_submit_btn")
	 # text_field(:strategy_select, :class => "visual-input")
	#  li(:emailstrategy, :class => "visual-item BESTSELLER_BY_REVENUE_SMART_CATEGORY")
	#  li(:emailstrategy, :class => "visual-item BESTSELLER_BY_REVENUE_SMART_CATEGORY")
  
	
	 	 
	 def tracked_as
	   return "RecrulesconfigPage"
	  end
				  
    end  
end


