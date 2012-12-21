module Cottontraders
    class SearchPage
      include PageObject
      include PeeriusHelper
      
      direct_url "http://www.cottontraders.co.uk/"
      text_field(:search, :id => 'q') 
    end  
end