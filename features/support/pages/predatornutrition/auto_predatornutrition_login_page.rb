#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Predatornutrition
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.predatornutrition.com/en/customer/account/login/"
      direct_url URL
      
  	  text_field(:username, :id=>"email")
      text_field(:password, :id=>"pass")  
  	  button(:login_submit, :name=>"send")           
    end  
end
