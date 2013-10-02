module Smartmanager
  
    class EmailconfigurationPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/smartmanager/mail/edit.page"
      direct_url URL
	  h4(:page_identifier, :text => "Recommendations")
	  text_field(:numwidgets, :id => "howMany")
	  button(:create_email1_submit, :id => "mail_submit_btn")
	  text_field(:strategy_select, :class => "visual-input")
	  li(:emailstrategy, :class => "visual-item BESTSELLER_BY_REVENUE_SMART_CATEGORY")
	  a(:strategy_expression_link, :class => "mail-exp")
	  a(:hint_tab_link, :text => "Hints")
	  text_field(:attrvalue, :class => "exp_right_hand the_value_input input-small autosearch-original original")
	 # select_list(:emailhint, :class => "exp_left_hand", :value => 'r.category')
	  
	#  li(items_message, :text => "Number of Items must be provided.")
	
  
	
	 	 
	 def tracked_as
	   return "EmailconfigurationPage"
	  end
				  
    end  
end


