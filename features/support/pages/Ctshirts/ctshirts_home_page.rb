module Ctshirts
    class HomePage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.ctshirts.co.uk/"
      
      # The unique HTML element that tells you you are on the correct page
      div(:page_identifier, :id => "prod_id")
      
      # The container for smart content
      div(:smart_content) do |page|
          page.div_elements(:class => "peeriusContent")
      end
      
      # The container for smart recs
      ul(:smart_recs, :id => "peeriusRecs")
      direct_url URL
            
      def use_promotion(promotion)
        navigate_to "#{URL}/Default.aspx?q=#{promotion}|||||||||||||||&spr=1"
      end
      
      # Return an an array of URLs containing every category link
      def categories

      end
       
    end  
end