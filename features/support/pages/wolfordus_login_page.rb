#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Wolfordus
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.wolfordshop.com/edealinv/servlet/ExecMacro?ctl_nbr=16690&nurl=control%2FMyAccount.vm&vns_id=5&groupId=6251&ei_reqIP=80.87.30.105&tru_ssl_pg=N&SUBCAMPAIGN_ID=-1&isLogOff=Y&ei_pgparamname=nurl&AllowNonSecureAdmin=Y&isMobileRequest=N"
      direct_url URL
      
  	  text_field(:username, :name => "usname", :index => 0)
      text_field(:password, :name => "pwd", :index => 0)  
  	  a(:login_submit, :text=>"Login")           
    end  
end
