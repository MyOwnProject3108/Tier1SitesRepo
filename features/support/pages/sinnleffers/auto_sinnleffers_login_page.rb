#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Sinnleffers
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = ""
      direct_url URL
      
  	  text_field(:username, :id=>"ctl00_ctl00_globalmaincontent_maincontent_txtLogonId")
      text_field(:password, :id=>"ctl00_ctl00_globalmaincontent_maincontent_txtPassword")  
  	  button(:login_submit, :name=>"ctl00$ctl00$globalmaincontent$maincontent$btnlogin2")           
    end  
end
