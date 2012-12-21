module Ctshirts
    class HomePage
      include PageObject
      include PeeriusHelper
      
      URL = "http://www.ctshirts.co.uk/"
      div(:page_identifier, :id => "prod_id")
      div(:smart_content) do |page|
          page.div_elements(:class => "peeriusContent")
      end
      ul(:smart_recs, :id => "peeriusRecs")
      direct_url URL
            
      def use_promotion(promotion)
        navigate_to "#{URL}/Default.aspx?q=#{promotion}|||||||||||||||&spr=1"
      end
      
      
    end  
end