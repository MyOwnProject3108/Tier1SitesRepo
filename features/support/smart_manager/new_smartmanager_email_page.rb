module Smartmanager
  
    class NewemailPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/smartmanager/mail/list.page"
      direct_url URL
	  h4(:page_identifier, :text => "Current SMART-mail Campaigns")
	  a(:new_campaign, :text => "Create a new campaign")
	#  table(:page_identifier, :class => "rctable")
	 # a(:create_link, :class => 'submit120')
	  #a(:delete_email_link, :href => '#delete', :index => 0)
	#  a(:delete_email_link, :href => '#delete')
	  #a(:confirm_delete_email, :text => "I'm sure")
	 	 
	 def tracked_as
	   return "NewemailPage"
	  end

			  
    end  
end

