module Smartmanager
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/"
      direct_url URL
	  em(:error_message, :class => "error")
      
  	  text_field(:username, :id=>"emailaddress")
      text_field(:password, :id=>"password")  
  	  button(:login_submit, :value=>"Login") 

			  
    end  
end

