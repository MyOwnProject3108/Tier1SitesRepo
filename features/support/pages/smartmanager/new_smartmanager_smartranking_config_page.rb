module Smartmanager
  
    class RankingconfigPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/smartmanager/ranking/edit.pagex"
      direct_url URL
		h4(:page_identifier, :text => "Configure Ranking")
		text_field(:rankingname, :id => "campaign_title")
		text_field(:influencename, :id => "the_item_name0")
		checkbox(:all_categories, :id => "add_all_categories_option")
		button(:influencetype_submit, :class => "btn pin")
		button(:influencetype2_submit, :class => "btn boost")
		text_field(:pinposition, :id => "appendedInput")
		text_field(:boostpercentage, :name => "items.influenceValue", :index => 0)
		#text_field(:boostpercentage, :id =>"xxx")
		#text_field(:rankcat, :xpath => "//div[@id='wrapper']/div[2]/div/form/div/div[4]/div/div/table/tbody/tr/td[2]/div[1]/div[3]/ul/li/ul/li/div/div[1]/input")
		text_field(:rankcat, :xpath => "//div[@id='wrapper']/div[2]/div/form/div/div[4]/div[2]/div/table/tbody/tr/td[2]/div[2]/div[1]/div[3]/ul/li/ul/li/div/div[1]/input")
	#	text_field(:applywhenrankcat, :xpath => "//div[@id='wrapper']/div[2]/div/form/div/div[4]/div/div/table/tbody/tr/td[2]/div[2]/div[3]/ul/li/ul/li/div/div[1]/input")
		text_field(:applywhenrankcat, :xpath => "//div[@id='wrapper']/div[2]/div/form/div/div[4]/div[2]/div/table/tbody/tr/td[2]/div[2]/div[2]/div[3]/ul/li/ul/li/div/div[1]/input")
		button(:save_ranking_submit, :class => "btn remove-btn save_changes btn-primary pull-right")
		div(:name_error_msg, :xpath => "//div[@id='wrapper']/div[2]/div/form/div/div[3]/div/div[1]/div/div")
		div(:div_err, :class => 'error')
		div(:div_succ, :class => "success")
	#	text_field(:infname, :id => "the_item_name0", :index => )
		
		def error_messages
		div_err_element.text
		end
		
		def success_messages
		div_succ_element.text
		end
	
	   def infname(a="AutoRankingnewrowCampaign2")
	  self.infname = a
	  
	   end
	  
	 def tracked_as
	   return "RankingconfigPage"
	  end
	  
				  
    end  
end

