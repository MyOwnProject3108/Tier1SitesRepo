module Smartmanager
    class LoginPage
      include PageObject
      include PeeriusHelper

      URL = "https://#{FigNewton.base_url}/tracker/"
      direct_url URL
	  div(:page_identifier, :id => "content")
	  
	  div(:error_message, :class => "error")
      text_field(:username, :id=>"emailaddress")
      text_field(:password, :id=>"password")
      button(:login_submit, :class => "btn btn-medium text left btn-primary")
	  #a(:reporting_submit, :href=>"analytics/recsreport.page", :index => 0)
	  #a(:smartproduct_submit, :href=>"analytics/recsreport.page", :index => 0)
	  #a(:smartproduct_submit, :href=>"merchandising/overview/list.page")
	  #a(:smartproduct_submit, :href=>"/tracker/shop-admin/email/widget/list.page")
	  #a(:smartproduct_submit, :href=>"/tracker/shop-admin/dynamiclandingpage/campaign/list.page")
	  #a(:smartproduct_submit, :href=>"adaptivelistings/list.pagex")
	  #a(:smartproduct_submit, :href=>"creative/list.page")
      
      def login(u="fsultana",p="4n424yq4n3w")
    		self.username = u
    		self.password = p
        login_submit
      end
           def tracked_as
	   return "LoginPage"
	  end
    end
end

