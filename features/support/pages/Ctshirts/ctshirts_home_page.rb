module Ctshirts
    class HomePage
      include PageObject
      
      URL = "http://www.ctshirts.co.uk/"
      
      expected_title 'Charles Tyrwhitt for Men\'s Shirts, Suits, Ties, Shoes & Accessories From Jermyn Street, London'
      direct_url URL
            
      def use_promotion(promotion)
        navigate_to "#{URL}/Default.aspx?q=#{promotion}|||||||||||||||&spr=1"
      end
      
      def smartContentCount
        wait_until(5) do
            @contentCount = div_elements(:class => "peeriusContent").count  
            @contentCount > 0
        end
        return @contentCount
      end
      
      def smartContentDisabled
          div_elements(:class => "peeriusContent").count == 0 
      end
    end  
end