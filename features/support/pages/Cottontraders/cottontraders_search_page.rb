module Cottontraders
    class SearchPage
      include PageObject
      
      URL = "http://www.cottontraders.co.uk/"
      
      expected_title 'Cotton Traders - Buy Mens and Womens Casual Clothing, Formal Clothing, Rugby Shirts, and More'
      direct_url URL
      text_field :search, :id => 'q'

      def search_for term
          self.search = term
          self.search_text_field.respond_to?(:send_keys) ? self.search_text_field.send_keys(:enter) : @browser.send_keys('{ENTER}')
      end
 
    end  
end