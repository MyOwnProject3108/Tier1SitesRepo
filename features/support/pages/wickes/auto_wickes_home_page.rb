#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#
module Wickes
  
    class HomePage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.wickes.co.uk/"
      direct_url URL
      
      link(:login_link, :id => "Lustype_loginlink")
	    text_field(:search, :id => "sli_search_1")
    end  
end