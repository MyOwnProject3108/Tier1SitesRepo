#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Dorothyperkinsde
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://de.dorothyperkins.com/webapp/wcs/stores/servlet/LogonForm?catalogId=34066&storeId=13062&krypto=AQ3YtugUY%2BUcsRGLqmw%2F%2BpJDZM63eX3og1YTrQcXl8x48M73SDzStAjZWSrgy3J%2FIAQVaZeHBpSG%0A%2Fm33DpKPMQ%3D%3D&ddkey=http:LogonForm"
      direct_url URL
      
  	  text_field(:username, :id=>"login_email")
      text_field(:password, :id=>"password")  
  	  link(:login_submit, :id=>"login_submit")           
    end  
end
