#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#

module Wickes
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.wickes.co.uk/rimini-round-basin-500mm+full-pedestal/invt/220725/"
      direct_url URL
      
      button(:add_to_basket, :id=> "bt_prodtail")          
    end  
end