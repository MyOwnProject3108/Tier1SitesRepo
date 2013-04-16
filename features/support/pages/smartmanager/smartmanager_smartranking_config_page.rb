# This class is for smart ranking configuration page after create click
module Smartmanager
  
    class SmartrankingConfigurationPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/adaptivelistings/edit.pagex"
      direct_url URL
		h3(:page_identifier, :text => "Smart Ranking Configuration")
	    text_field(:categoryranking, :name => "name")
		select_list(:rankingposition, :name => "htmlInjectionPoint")
		select_list(:htmltemplate, :name => "htmlFile")
		select_list(:csstemplate, :name => "cssFile")
		checkbox(:check_allCategories, :name => "allCategories")
		button(:ranking_save_submit, :value => "Save")
		button(:ranking_preview_submit, :value => "Preview")
		em(:validcategory_message, :text => "Please provide a valid category")
		a(:search_link_submit, :href => "#categorySearchForPreview")
		#a(:search_link_submit, :text => "Search")
		text_field(:categorysearchterm, :id => "term")
		a(:category_search_link_submit, :href => "#searchCategories")
		td(:search_results, :text => "Belts")
		button(:preview_submit, :value => "Preview")
	 	 
	 def tracked_as
	   return "SmartrankingConfigurationPage"
	  end

			  
    end  
end

