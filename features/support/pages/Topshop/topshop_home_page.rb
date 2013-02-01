module Topshop
    class HomePage
      include PageObject
      include PeeriusHelper
      
      direct_url "https://www.topshop.com/"
	  #text_field(:search, :id => 'inp_search_text')
	  
	 a(:login_link,:title=>"Login")
	 
	  def login_click
	    login_link
		end
            
      
    end  
end