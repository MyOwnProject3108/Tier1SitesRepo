#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#
module Topman
    class HomePage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.topman.com/"
      direct_url URL
      
      link(:login_link, :title => "Login")
	    text_field(:search, :id => "inp_search_text")
    end  
end