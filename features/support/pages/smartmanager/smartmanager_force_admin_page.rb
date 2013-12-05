module Smartmanager
    class ForceAdminPage
      include PageObject
      include PeeriusHelper

      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/welcome.page?forceShopadminUI=true"
      direct_url URL
	  h1(:page_identifier, :text => "Welcome to the Peerius Shop manager")
	    a(:content_link, :href => "creative/list.page")
#	  div(:error_message, :class => "error")
#      text_field(:username, :id=>"emailaddress")
#      text_field(:password, :id=>"password")
 #     button(:login_submit, :class => "btn btn-medium text left btn-primary")
#	  a(:merchandising_link, :href => "/tracker/shop-admin/merchandising/overview/list.page")
#	   a(:email_link, :href => "/tracker/shop-admin/email/widget/list.page")
#	  a(:config_link, :href => "/tracker/shop-admin/welcome-admin.page")
	#  a(:landing_link, :href => "/tracker/shop-admin/dynamiclandingpage/campaign/list.page")
	#  a(:ranking_link, :href => "adaptivelistings/list.pagex")
#	  a(:content_link, :href => "creative/list.page")
#	  a(:settings_link, :href => "/tracker/shop-admin/settings/settings.page")
#	  select_list(:siteselection, :name => "siteName")
#	  a(:reporting_link, :href=>"analytics/recsreport.page")
	  #a(:smartproduct_submit, :href=>"analytics/recsreport.page", :index => 0)
	  #a(:smartproduct_submit, :href=>"merchandising/overview/list.page")
	  #a(:smartproduct_submit, :href=>"/tracker/shop-admin/email/widget/list.page")
	  #a(:smartproduct_submit, :href=>"/tracker/shop-admin/dynamiclandingpage/campaign/list.page")
	  #a(:smartproduct_submit, :href=>"adaptivelistings/list.pagex")
	  #a(:smartproduct_submit, :href=>"creative/list.page")
      
 #     def login(u="fsultana",p="4n424yq4n3w")
#    		self.username = u
#    		self.password = p
#        login_submit
 #     end
           def tracked_as
	   return "ForceAdminPage"
	  end
    end
end

