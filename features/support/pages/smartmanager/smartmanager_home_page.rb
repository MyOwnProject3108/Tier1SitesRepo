module Smartmanager
    class HomePage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/welcome.page?goodBrowser=true"
      direct_url URL
	  
	  div(:page_identifier, :id => "welcome")
	  a(:logout, :href => "/tracker/shop-admin/logout.page")
	  a(:reporting_submit, :href=>"analytics/recsreport.page")
      a(:merchandising_submit, :href=>"merchandising/overview/list.page")
	  a(:email_submit, :href => "/tracker/shop-admin/email/widget/list.page")
	  a(:config_submit, :href => "/tracker/shop-admin/welcome-admin.page")
	  a(:landing_submit, :href => "/tracker/shop-admin/dynamiclandingpage/campaign/list.page")
	  a(:ranking_submit, :href => "adaptivelistings/list.pagex")
	  a(:content_submit, :href => "creative/list.page")
	  a(:settings_submit, :href => "/tracker/shop-admin/settings/settings.page")
	  
	  def tracked_as
	   return "HomePage"
	  end
	  	          	          
    end  
end

