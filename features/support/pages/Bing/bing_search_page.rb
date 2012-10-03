module Bing 
    class SearchPage
      include PageObject

      expected_title 'Bing'
  
      direct_url "http://www.bing.com/?cc=gb"

      text_field :search, :name => 'q'

      def search_for term
        self.search = term
        self.search_text_field.respond_to?(:send_keys) ? self.search_text_field.send_keys(:enter) : @browser.send_keys('{ENTER}')
      end
    end
end
 