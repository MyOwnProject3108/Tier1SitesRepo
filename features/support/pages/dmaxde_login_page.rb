#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Dmaxde
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.dmax-shop.de/account"
      direct_url URL
      
  	  text_field(:username, :id=>"email")
      text_field(:password, :id=>"passwort")  
  	  button(:login_submit, :value =>"Anmelden")           
    end  
end
