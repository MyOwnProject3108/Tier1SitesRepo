#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Dorothyperkinseu
  
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://euro.dorothyperkins.com/webapp/wcs/stores/servlet/LogonForm?catalogId=34070&storeId=13064&krypto=1liK%2FBE6ENGxtC8MgwVBnMsBglmXZ7uiKBZK9%2Fp0KX34s%2BJ4LfGthlF4EPPrKplMdw%2BlpcX5ZkHe%0A%2BSa4D27xGg%3D%3D&ddkey=http:en/tmuk/product/sale-1934033/grey-marl-cnd-tie-dye-printed-short-sleeve-sweatshirt-1975070"
      direct_url URL
      
  	  text_field(:username, :id=>"login_email")
      text_field(:password, :id=>"password")  
  	  link(:login_submit, :id=>"login_submit")           
    end  
end
