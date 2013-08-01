module Smartmanager
     class MailinatorinboxPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://mailinator.com/maildir.jsp?email=webtestpeerius%40mailinator&x=0&y=0"
      direct_url URL
	  
	    a(:peeriusrecs_submit, :text => "our recommendations", :index => 0)
			   	 
	 def tracked_as
	   return "MailinatorinboxPage"
	  end

			  
    end  
end

