#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Walliseu
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://euro.wallisfashion.com/webapp/wcs/stores/servlet/LogonForm?catalogId=34092&storeId=13075&krypto=9sWUkWwUoR6eaqLdzgpNw80g9sFXF%2F3CGrILoQu2t0HPGW91wRSjlLg6Wp0tU1HvF2X4fk148p6J%0ASmQKXOY%2FvA%3D%3D&ddkey=http:LogonForm"
      direct_url URL
      
  	  text_field(:username, :id=>"login_email")
      text_field(:password, :id=>"password")  
  	  link(:login_submit, :id=>"login_submit")           
    end  
end