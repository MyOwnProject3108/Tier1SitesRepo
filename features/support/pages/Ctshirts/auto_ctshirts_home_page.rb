#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.4 on 2013-02-03 16:02:18 +0000
#

module Ctshirts
    class HomePage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.ctshirts.co.uk/default.aspx?q=peerius|||||||||||||||"
      direct_url URL
      
      link(:login_link, :title => "Login")            
    end  
end