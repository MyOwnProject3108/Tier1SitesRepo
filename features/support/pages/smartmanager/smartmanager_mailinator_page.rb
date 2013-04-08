module Smartmanager
  #This class is for available widgets
    class MailinatorPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://mailinator.com/maildir.jsp?email=webtest&x=33&y=9"
      direct_url URL
	  
	    a(:recs_link, :text => "Our Recommendations", :index => 0)
	   	 
	 def tracked_as
	   return "MailinatorPage"
	  end

			  
    end  
end

