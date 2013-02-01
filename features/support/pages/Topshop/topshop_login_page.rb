module Topshop
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      direct_url "https://www.topshop.com/webapp/wcs/stores/servlet/LogonForm?catalogId=33057&storeId=12556&krypto=bw2BpuZQvDKkxtoRhWgVLg%3D%3D&ddkey=http:LogonForm"
	  text_field(:username, :id=>"login_email")
      text_field(:password, :id=>"password")  
	  a(:login_submit, :id=>"login_submit")
	  
	  def login_with(username, password)
		self.username = username
		self.password = password
		login_submit
	  end
	  	              
      
    end  
end