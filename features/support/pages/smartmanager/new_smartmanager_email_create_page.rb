module Smartmanager
  
    class NewemailcreatePage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/smartmanager/mail/edit.page"
      direct_url URL
	  h4(:page_identifier, :text => "Campaign name")
	  text_field(:campaignname, :id => "the_email_campaign_name")
	  text_field(:width, :id => 'productInfoWidth')
	  text_field(:height, :id => 'productInfoHeight')
	  text_field(:bgcolour, :name => "backgroundColour", :index => 0)
	  text_field(:titlecolour, :class => "colorpicker", :index => 1)
	  text_field(:pricecolour, :class => "colorpicker", :index => 2)
	  button(:email_campaign_submit, :class => "btn pull-right next")
	  a(:adv_link_submit, :text => "Show Advanced Settings")
	  p(:adv_message, :text => "In advanced mode you will be able to use normal html/css to style these pieces of content.")
	  a(:cancel_campaign_submit, :class => "btn btn-danger")
	
	 	 
	 def tracked_as
	   return "NewemailcreatePage"
	  end
				  
    end  
end


