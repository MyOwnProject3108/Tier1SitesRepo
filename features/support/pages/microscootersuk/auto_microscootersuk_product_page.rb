#
# This file is auto-generated. Please do not modify!
# Generated by QA Generator v0.1.5
#

module Microscootersuk
  
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.redletterdays.co.uk/men%27s-accessories/men%27s-cufflinks/Blue-round-starburst-enamel-cufflinks-?q=peerius||LE083BLU|||||||||||||"
      direct_url URL
      
      button(:add_to_basket, :id=> "ctl00_contentBody_ctl02_submit")          
    end  
end