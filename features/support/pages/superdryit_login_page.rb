#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Superdryit
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.superdry.it/my-account"
      direct_url URL
      
  	  text_field(:username, :id=>"username_login")
      text_field(:password, :id=>"passwd_login")  
  	  button(:login_submit, :name=>"Submit")           
    end  
end
