#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v2.0.20140717
#

module Sinnleffers
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = ""
      direct_url URL
      
      link(:basket_checkout, :value => "Weiter")
      
       
      
      def remove_product_links
        link_elements(:class => "js-remove-button")
      end 
      
    end  
end