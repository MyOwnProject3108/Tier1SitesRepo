#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5

#

module Zavvi
  
    class BasketPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://www.zavvi.com/zavvi/my.basket?mvtCTA=b"
      direct_url URL
      
      link(:basket_checkout, :id => "gotocheckout2")            
    end  
end