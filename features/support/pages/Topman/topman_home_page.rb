module Topman
    class HomePage
      include PageObject
      include PeeriusHelper
      
      direct_url "http://www.topman.com"
	  link(:login_link,:title=>"Login")
	  text_field(:search, :id => 'inp_search_text')
	  
	  def login_click
		login_link
	  end
            
      
    end  
end