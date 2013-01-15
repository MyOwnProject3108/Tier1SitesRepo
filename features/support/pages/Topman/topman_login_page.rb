module Topman
    class LoginPage
      include PageObject
      include PeeriusHelper
      
      direct_url "http://www.topman.com"
	  text_field(:name,:id=>"login_email")
      text_field(:pass,:id=>"password")
	  text_field(:search,:id=>"inppp_search_text")
	  
	  link(:login_submit,:id=>"login_submit")
	  
	  def login(username, password)
		name_element.when_present do
			name = username
		end
		pass = password
		search = password
		#login_submit
	  end
	  	              
      
    end  
end