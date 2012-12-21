module Ctshirts
    class SearchPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.ctshirts.co.uk/"
      
      expected_title 'Charles Tyrwhitt for Men\'s Shirts, Suits, Ties, Shoes & Accessories From Jermyn Street, London'
      direct_url URL
      text_field(:search, :id => 'search_term')
      
      def use_promotion(promotion)
        navigate_to "#{URL}/Default.aspx?q=#{promotion}|||||||||||||||&spr=1"
      end
      
    end  
end