#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Dorothyperkinseu
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://euro.dorothyperkins.com/webapp/wcs/stores/servlet/OrderItemDisplay?catalogId=34070&langId=-1&storeId=13064"
      direct_url URL
      
      link(:basket_checkout, :id => "checkout_submit_bottom")
      
       
      
      def remove_product_links
        link_elements(:class => "remove_bag_item")
      end 
      
    end  
end