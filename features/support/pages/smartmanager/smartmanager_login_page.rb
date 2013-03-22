module Smartmanager
    class LoginPage
      include PageObject
      include PeeriusHelper

      URL = "https://#{FigNewton.base_url}/tracker/"
      direct_url URL
	  div(:page_identifier, :id => "content")
	  
	  em(:error_message, :class => "error")
      text_field(:username, :id=>"emailaddress")
      text_field(:password, :id=>"password")
      button(:login_submit, :value=>"Login")
      
      def login(u="fsultana",p="4n424yq4n3w")
    		self.username = u
    		self.password = p
        login_submit
      end
           def tracked_as
	   return "LoginPage"
	  end
    end
end

