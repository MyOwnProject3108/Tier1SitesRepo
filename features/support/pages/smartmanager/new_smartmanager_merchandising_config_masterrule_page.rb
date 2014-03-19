module Smartmanager
  
    class MasterruleconfigPage
            
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/smartmanager/merchandising/edit.page"
      direct_url URL
	  h4(:page_identifier, :text => "Master Rules")
	  
	  button(:next_submit, :class => "btn pull-right next")
	  a(:master_rule_submit, :id => "merch_master_ui_btn")
	  text_field(:merchval, :xpath => "//div[@id='merch_master_ui']/div/ul/li/ul/li/div/div[1]/input")
	  
	 # text_field(:numwidgets, :id => "howMany")
	 # button(:create_email1_submit, :id => "mail_submit_btn")
	 # text_field(:strategy_select, :class => "visual-input")
	#  li(:emailstrategy, :class => "visual-item BESTSELLER_BY_REVENUE_SMART_CATEGORY")
	#  li(:emailstrategy, :class => "visual-item BESTSELLER_BY_REVENUE_SMART_CATEGORY")
  
	
	 	 
	 def tracked_as
	   return "MasterruleconfigPage"
	  end
				  
    end  
end


