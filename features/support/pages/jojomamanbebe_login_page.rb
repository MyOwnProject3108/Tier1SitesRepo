#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Jojomamanbebe
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.jojomamanbebe.co.uk/login.asp"
      direct_url URL
      
  	  text_field(:username, :name => "email")
      text_field(:password, :name => "password")  
  	  button(:login_submit, :name=>"login")           
    end  
end
