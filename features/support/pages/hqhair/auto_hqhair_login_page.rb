#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#

module Hqhair
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.hqhair.com/hqhair/login.jsp?redirectToLoginOnPasswordReset"
      direct_url URL
      
  	  text_field(:username, :id=>"username")
      text_field(:password, :id=>"password")  
  	  button(:login_submit, :id=>"login-submit")           
    end  
end
