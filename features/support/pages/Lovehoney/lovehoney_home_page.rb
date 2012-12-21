module Lovehoney
    class HomePage
      include PageObject
      include PeeriusHelper
      
      div(:smart_content, :class => "peeriusContent")
      ul(:smart_recs, :id => "peeriusRecs")
      direct_url "http://www.lovehoney.co.uk/"
      
      # Returns true if the page is actually a page of the expected type
      def valid?
        false
      end      
    end  
end