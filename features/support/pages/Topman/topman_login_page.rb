module Topman
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      direct_url "http://topman.com/webapp/wcs/stores/servlet/LogonForm?catalogId=33056&storeId=12555"
	  text_field(:username, :id=>"login_email")
      text_field(:password, :id=>"password")  
	  link(:login_submit, :id=>"login_submit")
	  
	  def login_with(username, password)
		self.username = username
		self.password = password
		login_submit
	  end
	  	              
      
    end  
end