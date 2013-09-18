module Smartmanager
    class HomePage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/welcome.page?goodBrowser=true"
      direct_url URL
	  
	  div(:page_identifier, :id => "welcome")
	  a(:logout, :href => "/tracker/shop-admin/logout.page")
	  a(:reporting_link, :href=>"analytics/recsreport.page")
      a(:merchandising_link, :href=>"merchandising/overview/list.page")
	  a(:email_link, :href => "/tracker/shop-admin/email/widget/list.page")
	  a(:config_link, :href => "/tracker/shop-admin/welcome-admin.page")
	  a(:landing_link, :href => "/tracker/shop-admin/dynamiclandingpage/campaign/list.page")
	  a(:ranking_link, :href => "adaptivelistings/list.pagex")
	  a(:content_link, :href => "creative/list.page")
	  a(:settings_link, :href => "/tracker/shop-admin/settings/settings.page")
	  a(:new_smartmanager_link, :href => "/tracker/smartmanager/reporting/orders.page")
	  
	  def tracked_as
	   return "HomePage"
	  end
	  	          	          
    end  
end

