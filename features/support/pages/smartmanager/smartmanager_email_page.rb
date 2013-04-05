module Smartmanager
  
    class EmailPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/email/widget/list.page"
      direct_url URL
	  table(:page_identifier, :class => "rctable")
	  a(:create_link, :class => 'submit120')
	 	 
	 def tracked_as
	   return "EmailPage"
	  end

			  
    end  
end

