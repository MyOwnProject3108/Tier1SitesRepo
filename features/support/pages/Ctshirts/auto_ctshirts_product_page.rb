#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.4 on 2013-02-02 21:24:37 +0000
#

module Ctshirts
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.ctshirts.co.uk/men%27s-ties/men%27s-woven-silk-ties/Purcell-navy,-red-and-royal-double-stripe-woven-tie?q=peerius||TW838NAV|||||||||||||"
      direct_url URL
      
      button(:add_to_basket, :id=> "btn_add_2_shop_cart")
      select_list(:size_select, :id => "product_size_full")            
    end  
end