#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.4 on 2013-02-03 16:02:18 +0000
#

module Topshop
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.topshop.com/webapp/wcs/stores/servlet/OrderItemDisplay?catalogId=33057&langId=-1&storeId=12556&ddkey=http:OrderCalculate"
      direct_url URL
      
      link(:basket_checkout, :class => "btn_checkout chk_button_primary")            
    end  
end