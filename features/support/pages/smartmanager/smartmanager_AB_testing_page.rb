module Smartmanager
  
    class GroupPage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/abtesting/abtests.page"
      direct_url URL
	  div(:page_identifier, :id => "content")
	  text_field(:percentage1, :id => 'group_a')
	  text_field(:percentage2, :id => 'group_b')
	 # select_list(:group, :name => 'self[PRODUCT-A-0]')
	 # select_list(:group, :name => 'self[PRODUCT-B-0]')
	  a(:AB_group_submit, :href => 'abtesting/abtests.page')
	  button(:create_submit, :class => 'submit120')
	 	 
	 def tracked_as
	   return "GroupPage"
	  end

			  
    end  
end

