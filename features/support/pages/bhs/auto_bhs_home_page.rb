#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#
module Bhs
  
    class HomePage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.bhs.co.uk/webapp/wcs/stores/servlet/TopCategoriesDisplay?storeId=13077&catalogId=34096"
      direct_url URL
      
      link(:login_link, :title => "Login")
	    text_field(:search, :id => "inp_search_text")
    end  
end