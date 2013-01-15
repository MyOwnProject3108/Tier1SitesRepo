module Topman
    class HomePage
      include PageObject
      include PeeriusHelper
      
      direct_url "http://www.topman.com"
	  link(:login_link,:title=>"Login")
	  
	  def login_click
		login_link
	  end
            
      
    end  
end