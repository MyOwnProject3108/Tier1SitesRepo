#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Topshopde
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://us.topshop.com/webapp/wcs/stores/servlet/LogonForm?catalogId=33060&storeId=13052&krypto=bw2BpuZQvDKkxtoRhWgVLg%3D%3D&ddkey=http:LogonForm"
      direct_url URL
      
  	  text_field(:username, :id=>"login_email")
      text_field(:password, :id=>"password")  
  	  link(:login_submit, :id=>"login_submit")           
    end  
end
