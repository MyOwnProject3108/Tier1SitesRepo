module Topman
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      div(:page_identifier, :id => "prod_id")
      ul(:smart_recs, :id => "peeriusRecs") 
      div(:smart_content, :class => "peeriusContent")
	  a(:click_checkout, :class => "btn_checkout chk_button_primary")

      direct_url "https://www.topman.com/webapp/wcs/stores/servlet/OrderItemDisplay?catalogId=33056&langId=-1&storeId=12555&krypto=bw2BpuZQvDIRSMcapRzCKaWwf9SE8axDf5gpFadKXxCKV0XCrslBPy45tX48BFSUoZle0W1EX9o8%0ADO%2F4DR8U3G8v0EVgPM2DKQgecqmgNDkfd6JBkNaBI%2FxsT%2FMsifHyHORXNhGMpLk%3D&ddkey=http:OrderCalculate"
    end  
	
end