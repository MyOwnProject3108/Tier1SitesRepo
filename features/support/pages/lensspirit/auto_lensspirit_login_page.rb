#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Lensspirit
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.lensspirit.de/Login/"
      direct_url URL
      
  	  text_field(:username, :name=>"form_input[login]")
      text_field(:password, :name=>"form_input[password]")  
  	  button(:login_submit, :value=>"Login")           
    end  
end
