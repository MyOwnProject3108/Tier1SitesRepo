#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#

module Zavvi
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.zavvi.com/dvd/the-world-at-war-the-ultimate-restored-edition/10166563.html"
      direct_url URL
      
      button(:add_to_basket, :id=> "productbuy")          
    end  
end