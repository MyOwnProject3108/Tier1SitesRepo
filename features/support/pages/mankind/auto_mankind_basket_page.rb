#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#

module Mankind
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.mankind.co.uk/mankind/my.basket"
      direct_url URL
      
      link(:basket_checkout, :id => "gotocheckout2")            
    end  
end