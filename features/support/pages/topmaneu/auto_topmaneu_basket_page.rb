#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#

module Topmaneu
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://us.topman.com/webapp/wcs/stores/servlet/OrderItemDisplay?catalogId=33059&langId=-1&storeId=13051"
      direct_url URL
      
      link(:basket_checkout, :class => "btn_checkout")            
    end  
end