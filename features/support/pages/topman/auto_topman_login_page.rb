#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Topman
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://topman.com/webapp/wcs/stores/servlet/LogonForm?catalogId=33056&storeId=12555"
      direct_url URL
      
  	  text_field(:username, :id=>"login_email")
      text_field(:password, :id=>"password")  
  	  link(:login_submit, :id=>"login_submit")           
    end  
end
