module Google
    class ResultsPage
      include PageObject

      #expected_title 'Google'
      #page_url "http://www.google.com/"

      ordered_list(:result_list, :id => "rso")

      def results       
          wait_until do
              self.result_list?
          end 
          self.result_list? ? self.result_list_element.text : ""
      end
    end  
end