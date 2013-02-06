module Alexblake
    class ProductPage
      include PageObject
      include PeeriusHelper
      
      div(:page_identifier, :class => "product_detail")
      div(:smart_recs) do |page|
        page.div_element(:class => "association_group").div_elements(:class => "associated_product")
      end
      
      direct_url "http://www.alexblake.com/ab/jonathan-aston-40d-opaque-tights.html"           
    end  
end