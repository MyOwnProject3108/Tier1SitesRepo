#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#
module Ctshirts
    class HomePage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.ctshirts.co.uk/default.aspx?q=peerius|||||||||||||||"
      direct_url URL
      
      link(:login_link, :href=> "https://www.ctshirts.co.uk/AccountLogin.aspx")
	    text_field(:search, :id => "search_term")
    end  
end