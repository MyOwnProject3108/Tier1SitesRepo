module Smartmanager
     class MailinatorPage
      include PageObject
      include PeeriusHelper
      
      URL = "http://mailinator.com/"
      direct_url URL
	  
	   # a(:peeriusrecs_submit, :href => "/displayemail1.jsp?email=webtestpeerius&msgid=1373557124-15706932-webtestpeerius", :index => 0)
	   a(:recs_link, :text => "our recommendations")
		text_field(:emailrecs, :id => "check_inbox_field")
		button(:go_submit, :class => "buttonGo")
	   	 
	 def tracked_as
	   return "MailinatorPage"
	  end

			  
    end  
end

