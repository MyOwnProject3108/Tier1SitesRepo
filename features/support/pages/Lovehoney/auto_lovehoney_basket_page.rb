#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#

module Lovehoney
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.lovehoney.co.uk/your-basket/"
      direct_url URL
      
      link(:basket_checkout, :class => "btn_checkout")            
    end  
end