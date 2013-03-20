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
	  select_list(:color, :class => 'color_swatch')
	 	 
	 def tracked_as
	   return "EmailcreatePage"
	  end

			  
    end  
end



