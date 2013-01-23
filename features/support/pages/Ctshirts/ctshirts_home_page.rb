module Ctshirts
    class HomePage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.ctshirts.co.uk/"
      direct_url URL  
      
      # The unique HTML element that tells you you are on the correct page
      div(:page_identifier, :id => "prod_id")
      
      # The container for smart content
      div(:smart_content) do |page|
          page.div_elements(:class => "peeriusContent")
      end
      
      # The container for smart recs
      ul(:smart_recs, :id => "peeriusRecs")
      
      div(:menu, :id => "menu")
             
      def use_promotion(promotion)
        navigate_to "#{URL}/Default.aspx?q=#{promotion}|||||||||||||||&spr=1"
      end
       
    end  
end