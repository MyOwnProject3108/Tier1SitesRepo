#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Tommyhilfigerbefr
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://be.tommy.com/on/demandware.store/Sites-BE-Site/fr_BE/Account-Show"
      direct_url URL
      
  	  text_field(:username, :id => "dwfrm_login_username")
      text_field(:password, :id => "dwfrm_login_password")  
  	  button(:login_submit, :name => "dwfrm_login_customlogin")           
    end  
end
