#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Tommyhilfigeruk
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://uk.tommy.com/on/demandware.store/Sites-GB-Site/en_GB/Account-Show"
      direct_url URL
      
  	  text_field(:username, :id => "dwfrm_login_username")
      text_field(:password, :id => "dwfrm_login_password")  
  	  button(:login_submit, :class => "button active js_login")           
    end  
end
