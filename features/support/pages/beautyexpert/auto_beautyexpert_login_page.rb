#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#

module Beautyexpert
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.beautyexpert.co.uk/beautyexpert/login.jsp"
      direct_url URL
      
  	  text_field(:username, :id=>"username")
      text_field(:password, :id=>"password")  
  	  button(:login_submit, :id=>"login-submit")           
    end  
end
