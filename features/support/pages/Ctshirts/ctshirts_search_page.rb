module Ctshirts
    class SearchPage
      include PageObject
      
      URL = "http://www.ctshirts.co.uk/"
      
      expected_title 'Charles Tyrwhitt for Men\'s Shirts, Suits, Ties, Shoes & Accessories From Jermyn Street, London'
      direct_url URL
      text_field :search, :id => 'search_term'

      def search_for term
          self.search = term
          self.search_text_field.respond_to?(:send_keys) ? self.search_text_field.send_keys(:enter) : @browser.send_keys('{ENTER}')
      end
            
      def use_promotion(promotion)
        navigate_to "#{URL}/Default.aspx?q=#{promotion}|||||||||||||||&spr=1"
      end
      
      def smartContent
        @smartContent = div_elements(:class => "peeriusContent")
        wait_until(5) do
            @smartContent.count > 0 
        end
        return @smartContent
      end
      
      def smartContentDisabled
          div_elements(:class => "peeriusContent").count == 0 
      end
      
    end  
end