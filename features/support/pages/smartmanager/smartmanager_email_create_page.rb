module Smartmanager
  
    class EmailcreatePage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/email/widget/edit.page"
      direct_url URL
	  div(:page_identifier, :id => "content")
	  text_field(:widgetname, :name => 'name')
	  text_field(:width, :id => 'productInfoWidth')
	  text_field(:height, :id => 'productInfoHeight')
	  #select_list(:color, :class => 'color_picker')
	 # div(:color_submit, :class => "color_swatch",:style => "background-color: rgb(153, 51, 102); border-color: rgb(0, 0, 0);")
	# div(:color_submit, :style => "background-color: rgb(153, 51, 102); border-color: rgb(0, 0, 0);")
	div(:color_submit, :class => 'color_picker', :style => "background-color: rgb(0, 0, 0);")
	
	
	 	 
	 def tracked_as
	   return "EmailcreatePage"
	  end

			  
    end  
end


