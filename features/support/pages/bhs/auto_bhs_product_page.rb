#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v1.0.20140623
#

module Bhs
  
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.bhs.co.uk/en/bhuk/product/women-1020590/dresses-1020593/black-white-ponte-fit-n-flare-geo-dress-2634399?bi=1&ps=40"
      direct_url URL
	  # site elements
      
      button(:add_to_basket, :xpath=> "/html/body/div/div[3]/div[2]/div/div[3]/div/form/ul/li/input")
       
      # page elements
      
      button(:add_to_basket, :id=> "btn_add_2_shop_cart")
      
    end  
end
