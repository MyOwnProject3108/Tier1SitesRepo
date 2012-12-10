module Wallis
    class HomePage
      include PageObject
      
      URL = "http://www.wallis.co.uk/"
      
      expected_title 'Wallis - Dresses, Tops, Skirts and Petite clothing - Womens Clothing'
      direct_url URL
	  td(:tracked_as_type,:id => 'trackInfo')
        
	def	tracked_as?(pagetype)
		tracked_as_type.include? pagetype 
	end
   
           
    end  
end