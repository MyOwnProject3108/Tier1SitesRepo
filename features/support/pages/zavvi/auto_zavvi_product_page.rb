#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#

module Zavvi
  
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.zavvi.com/dvd/goodnight-sweetheart-series-1-6/8560541.html"
      direct_url URL
      
      link(:add_to_basket, :class=> "productbuy")          
    end  
end