#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140623
#

module Toast
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.toast.co.uk/login.htm?returnUrl=%2faccount.htm%3fmode%3dmyaccount"
      direct_url URL
      
  	  text_field(:username, :id=>"ctl00_globalMainContent_txtLogonId")
      text_field(:password, :id=>"ctl00_globalMainContent_txtPassword")  
  	  button(:login_submit, :id=>"ctl00_globalMainContent_login1")           
    end  
end
