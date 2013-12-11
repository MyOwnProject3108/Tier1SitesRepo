module Smartmanager
  
    class CreativelistingPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/smartmanager/creative/list.page"
      direct_url URL
		h4(:page_identifier, :text => "Creatives")
		a(:new_create_link, :class => "btn-create-creative btn btn-success pull-right")
		text_field(:creativename, :class => "input-xlarge sm_content_the_name pull-left")
		text_field(:imageurl, :class => "input-small ui-img")
		text_field(:linkurl, :class => "input-small ui-link")
		text_field(:searchfield, :class => "visual-input", :index => 1)
		
		
		text_area(:prod_search, :class => "visual-input", :index => 0)
		text_area(:searchprodterm, :xpath => "//div[@id='wrapper']/div[2]/div/div[2]/form/div[1]/div[3]/div[2]/fieldset/ul/li[1]/div/textarea[2]")
		
		
		
		text_field(:cat_search, :xpath => "//div[@id='wrapper']/div[2]/div/div[2]/form/div[1]/div[3]/div[2]/fieldset/ul/li[2]/div/div/input")
		text_field(:attr_search, :class => "visual-input", :index => 2)
		
		text_field(:searchattrterm, :xpath => "//div[@id='wrapper']/div[2]/div/div[2]/form/div[1]/div[3]/div[2]/fieldset/ul/li[3]/div/div/input")
		
	#	a(:new_setup_link, :href => "/tracker/smartmanager/adaptivecontent/edit.page")
		span(:new_setup_tab, :text => "New Setup")
		
	#	text_field(:attrsearch, :xpath => "//div[@id='wrapper']/div[2]/div/div[2]/form/div[1]/div[3]/div[2]/fieldset/ul/li[3]/div/div/div/input")
	#	text_field(:searchfield1, :xpath => "//div[@id='wrapper']/div[2]/div/div[2]/form/div[1]/div[3]/div[2]/fieldset/ul/li[3]/div/div/div")
	#	select_list(:cat_list, :xpath => "//div[@id='wrapper']/div[2]/div/div[2]/form/div[1]/div[3]/div[2]/fieldset/ul/li[2]/div/div/input/ul")
		# text_field(:creativename, :id => "name")
		# text_field(:creativeurl, :id => "image1")
		# text_field(:linkurl, :id => "link1")
		# text_area(:relatedprod, :id => "products")
		# text_area(:relatedcat, :id => "categories")
		
		# a(:relatedcat_submit, :href => "#categorySearch")
		#text_field(:searchcat, :id => "term")
		# a(:catsearch_link_submit, :href => "#searchCategories")
		# cell(:resultpick_submit, :text => "Jackets")
		# a(:add_selection_link, :href => "#addCategories")
		# text_area(:relatedattr, :id => "attributes")
		# text_field(:tags, :id => "tags")
		#button(:save_submit, :class => "submit120")
		# a(:relatedprod_submit, :href => "#productSearch")
		# a(:prodsearch_link_submit, :href => "#searchProducts")
		# cell(:prodpick_submit, :text => "Gold plain woven tie")
		# link(:prodadd_selection_link_submit, :href => "#addProducts")
		# button(:creative_save_submit, :value => "Save")
		# a(:creative_cancel_submit, :text => "Cancel")
	    # text_field(:relatedproductsearch, :id => "term")
		# cell(:prodresultpick_submit, :text => "Gold plain woven tie")
		# text_field(:relatedcatsearch, :id => "term")
		# a(:delete_creative_link, :href => "#delete1")
		# a(:advanced_creative_link, :href => "#adv1")
		# button(:add_creative_button, :value => "Add Creative")
		# text_field(:creativeurl2, :id => "image2")
		# text_field(:linkurl2, :id => "link2")
	 	 
	 def tracked_as
	   return "CreativelistingPage"
	  end
	  
				  
    end  
end

