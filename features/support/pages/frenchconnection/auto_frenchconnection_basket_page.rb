#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#

module Frenchconnection
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.frenchconnection.com/basket.htm"
      direct_url URL
      
      link(:basket_checkout, :id => "ctl00_ctl00_globalmaincontent_maincontent_hlCheckout")            
    end  
end