#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Topmansandpit
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://tm.sandpit.arcadiagroup.ltd.uk/webapp/wcs/stores/servlet/OrderItemDisplay?catalogId=33056&langId=-1&storeId=12555&krypto=uv4XFNHYwVG96Pbeo%2F0G%2Bg11qrAFKbsQA03CoTp65XadxH%2FuyXdRr2aHVTrZqiGsK%2FNNzgxWclrH%0Aa5oXVp2%2BhfFLE3OR2d%2BipDYdGSQ%2BuAtCsx%2FwcoEsqvc030GI2GT%2BAqBsa58kZcs7H64EBEmllg%3D%3D&ddkey=http:OrderCalculate"
      direct_url URL
      
      link(:basket_checkout, :class => "chk_button_primary")
      
       
      
      def remove_product_links
        link_elements(:class => "remove_bag_item")
      end 
      
    end  
end
