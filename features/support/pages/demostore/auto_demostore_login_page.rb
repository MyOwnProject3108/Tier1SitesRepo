#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Demostore
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://showcase.peerius.com/index.php/customer/account/login/"
      direct_url URL
      
  	  text_field(:username, :id=>"email")
      text_field(:password, :id=>"pass")  
  	  button(:login_submit, :id=>"send2")           
    end  
end
