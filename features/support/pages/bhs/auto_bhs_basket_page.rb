#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#

module Bhs
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.bhs.co.uk/webapp/wcs/stores/servlet/OrderItemDisplay?catalogId=34096&langId=-1&storeId=13077"
      direct_url URL
      
      link(:basket_checkout, :id => "ctl00_ctl00_globalmaincontent_maincontent_hlCheckout")            
    end  
end