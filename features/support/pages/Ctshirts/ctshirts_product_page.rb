module Ctshirts
    class ProductPage
      include PageObject
      
      URL = "http://www.ctshirts.co.uk/men%27s-shirts/men%27s-formal-shirts/Cream-poplin-classic-fit-shirt?q=gbpdefault||SP003CRM|||||221,||||||||"
      
      expected_title 'Cream poplin classic fit shirt | Classic fit formal shirts from Charles Tyrwhitt, Jermyn Street, London'
      direct_url URL
            
      def use_promotion(promotion)
        navigate_to "#{URL}/Default.aspx?q=#{promotion}|||||||||||||||"
      end
      
	  
      def smartContentDisabled
          div_elements(:class => "peeriusContent").count == 0 
      end
	  
	  # Should return an array of recs
	  def smartRecs
          unordered_list_element(:id => "peeriusRecs").when_visible
      end
	  
    end  
	
end