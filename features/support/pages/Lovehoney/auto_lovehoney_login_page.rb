#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#

module Lovehoney
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.lovehoney.co.uk/your-account/sign-in.html"
      direct_url URL
      
  	  text_field(:username, :id=>"email")
      text_field(:password, :id=>"password")  
  	  button(:login_submit, :class=>"button-primary")           
    end  
end

