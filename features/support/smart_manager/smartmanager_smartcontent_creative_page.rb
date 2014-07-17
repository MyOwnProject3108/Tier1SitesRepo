# This class is for smart content configuration page after create click
module Smartmanager
  
    class SmartcontentCreativePage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/creative/edit.page"
      direct_url URL
		h3(:page_identifier, :text => "Create/Edit Creatives")
		text_field(:creativename, :id => "name")
		text_field(:creativeurl, :id => "image1")
		text_field(:linkurl, :id => "link1")
		text_area(:relatedprod, :id => "products")
		text_area(:relatedcat, :id => "categories")
		
		a(:relatedcat_submit, :href => "#categorySearch")
		#text_field(:searchcat, :id => "term")
		a(:catsearch_link_submit, :href => "#searchCategories")
		cell(:resultpick_submit, :text => "Jackets")
		a(:add_selection_link, :href => "#addCategories")
		text_area(:relatedattr, :id => "attributes")
		text_field(:tags, :id => "tags")
		#button(:save_submit, :class => "submit120")
		a(:relatedprod_submit, :href => "#productSearch")
		a(:prodsearch_link_submit, :href => "#searchProducts")
		cell(:prodpick_submit, :text => "Gold plain woven tie")
		link(:prodadd_selection_link_submit, :href => "#addProducts")
		button(:creative_save_submit, :value => "Save")
		a(:creative_cancel_submit, :text => "Cancel")
	    text_field(:relatedproductsearch, :id => "term")
		cell(:prodresultpick_submit, :text => "Gold plain woven tie")
		text_field(:relatedcatsearch, :id => "term")
		a(:delete_creative_link, :href => "#delete1")
		a(:advanced_creative_link, :href => "#adv1")
		button(:add_creative_button, :value => "Add Creative")
		text_field(:creativeurl2, :id => "image2")
		text_field(:linkurl2, :id => "link2")
	 	 
	 def tracked_as
	   return "SmartcontentCreativePage"
	  end
	  
				  
    end  
end

