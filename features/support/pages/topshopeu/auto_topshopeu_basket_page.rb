#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#

module Topshopeu
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://eu.topshop.com/webapp/wcs/stores/servlet/OrderItemDisplay?catalogId=34058&langId=-1&storeId=13058"
      direct_url URL
      
      link(:basket_checkout, :id => "checkout_submit_bottom")            
    end  
end