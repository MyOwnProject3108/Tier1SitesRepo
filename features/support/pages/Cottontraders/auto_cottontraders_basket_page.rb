#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#

module Cottontraders
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.cottontraders.co.uk/bin/venda?ex=co_wizr-shopcart&bsref=cottontraders&log=22"
      direct_url URL
      
      button(:basket_checkout, :class => "right btCheckout")            
    end  
end