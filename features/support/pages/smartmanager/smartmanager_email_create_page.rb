module Smartmanager
  
    class EmailcreatePage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/shop-admin/email/widget/edit.page"
      direct_url URL
	  div(:page_identifier, :id => "content")
	  text_field(:emailwidget, :name => 'name')
	  text_field(:width, :id => 'productInfoWidth')
	  text_field(:height, :id => 'productInfoHeight')
	  div(:title_color_picker, :class => 'color_picker', :index => 0)
	  div(:price_color_picker, :class => 'color_picker', :index => 1)
	  div(:background_color_picker, :class => 'color_picker', :index => 2)
	
	
	 	 
	 def tracked_as
	   return "EmailcreatePage"
	  end

			  
    end  
end


