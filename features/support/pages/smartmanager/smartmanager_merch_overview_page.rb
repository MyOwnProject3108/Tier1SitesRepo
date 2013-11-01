module Smartmanager
    class MerchoverviewPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/smartmanager/merchandising/list.page"
      direct_url URL
	  
	  h4(:page_identifier, :text => "Summary of activity for merchandising promotions created")
	  a(:create_merch_campaign_submit, :text => "Create a new campaign")
#	  a(:email_link, :href => "/tracker/smartmanager/mail/list.page")
#	  a(:merchandising_link, :href => "/tracker/smartmanager/merchandising/list.page")
	 # h4(:page_identifier, :text => "Total Orders")
	 # a(:logout, :href => "/tracker/shop-admin/logout.page")
	  #a(:reporting_link, :href=>"analytics/recsreport.page")
      #a(:merchandising_link, :href=>"merchandising/overview/list.page")
	  #a(:email_link, :href => "/tracker/shop-admin/email/widget/list.page")
	  #a(:config_link, :href => "/tracker/shop-admin/welcome-admin.page")
	  #a(:landing_link, :href => "/tracker/shop-admin/dynamiclandingpage/campaign/list.page")
	  #a(:ranking_link, :href => "adaptivelistings/list.pagex")
	  #a(:content_link, :href => "creative/list.page")
	  #a(:settings_link, :href => "/tracker/shop-admin/settings/settings.page")
	  #a(:new_smartmanager_link, :href => "/tracker/smartmanager/reporting/orders.page")
	  
	  def tracked_as
	   return "MerchoverviewPage"
	  end
	  	          	          
    end  
end

