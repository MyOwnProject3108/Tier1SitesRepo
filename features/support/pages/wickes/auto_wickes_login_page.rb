#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#

module Wickes
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.wickes.co.uk/bin/venda?ex=co_wizr-register&bsref=wickes"
      direct_url URL
      
  	  text_field(:username, :id=>"login_email")
      text_field(:password, :id=>"password")  
  	  link(:login_submit, :id=>"login_submit")           
    end  
end
