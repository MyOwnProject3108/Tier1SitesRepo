#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#

module Topman
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.topman.com/webapp/wcs/stores/servlet/OrderItemDisplay?catalogId=33056&langId=-1&storeId=12555"
      direct_url URL
      
      link(:basket_checkout, :class => "btn_checkout")            
    end  
end