#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#

module Ctshirts
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.ctshirts.co.uk/AccountLogin.aspx"
      direct_url URL
      
  	  text_field(:username, :id=>"ctl00_contentBody_email")
      text_field(:password, :id=>"ctl00_contentBody_password")  
  	  button(:login_submit, :id=>"ctl00_contentBody_submit")           
    end  
end

