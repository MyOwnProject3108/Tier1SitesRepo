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
	#  li(:emailstrategy, :class => "visual-item BESTSELLER_BY_REVENUE_SMART_CATEGORY")
	#  li(:emailstrategy, :class => "visual-item BESTSELLER_BY_REVENUE_SMART_CATEGORY")
  
	
	 	 
	 def tracked_as
	   return "EmailconfigurationPage"
	  end
				  
    end  
end


