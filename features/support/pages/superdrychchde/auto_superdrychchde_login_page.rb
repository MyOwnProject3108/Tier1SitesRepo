#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Superdrychchde
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.superdrystore.ch/ch-de/my-account"
      direct_url URL
      
  	  text_field(:username, :id=>"username_login")
      text_field(:password, :id=>"passwd_login")  
  	  button(:login_submit, :name=>"Submit")           
    end  
end
