#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140423
#

module Topmaneu
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://eu.topman.com/webapp/wcs/stores/servlet/OrderItemDisplay?catalogId=34064&langId=-1&storeId=13061&krypto=bw2BpuZQvDIRSMcapRzCKaWwf9SE8axDf5gpFadKXxCKV0XCrslBPy45tX48BFSUoZle0W1EX9o8%0ADO%2F4DR8U3G8v0EVgPM2DKQgecqmgNDkfd6JBkNaBI%2FxsT%2FMsifHyHORXNhGMpLk%3D&ddkey=http:OrderCalculate"
      direct_url URL
      
      link(:basket_checkout, :class => "btn_checkout")
      
       
      
      def remove_product_links
        link_elements(:class => "remove_bag_item")
      end 
      
    end  
end
