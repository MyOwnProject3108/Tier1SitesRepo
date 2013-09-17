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
	  a(:copy_configuration_link, :text => "Copy this configuration to a new Position")
	   #text_field(:items, :id => 'howMany')
	   text_field(:email, :name => 'emailId')
	   a(:test_email_link, :text => 'Trigger Test Email')
	   a(:preview_email_link, :text => 'Preview Email')
	   button(:save_email_submit, :class => 'submit120')
	   a(:email_debuginfo_link, :text => "Click here for debug information")
	   #select_list(:norepeatrecs_submit, :text => '1')
	   select_list(:hint, :name => 'hintsBySlot[0]')
	   image(:expression_submit, :src => "/tracker/images/skin2/bolean.png")
	   a(:add_expression_link, :href => "#add")
	   a(:attribute_submit, :href => "#menu")
	   a(:attrselect_link, :href => "#r.clientcategory")
	  # a(:attributes_submit,:href => "#attrs")
	   text_field(:attr, :class => "ui-autocomplete-input")
	   checkbox(:topups_submit, :id => "useTopups")
	  # image(:email_error_message, :src => "productInfoPreview.page?code=JTNDc3R5bGUlM0UlMEElMjNjb250ZW50JTIwJTdCJTBBYmFja2dyb3VuZCUzQSUyM0ZGRkZGRiUzQiUwQSU3RCUwQSUyM3RpdGxlJTIwJTdCJTBBY29sb3IlM0ElMjMwMDAwMDAlM0IlMEFmb250LWZhbWlseSUzQSUyMEFyaWFsJTNCJTBBZm9udC1zaXplJTNBJTIwMTIuMHB0JTNCJTBBZGlzcGxheSUzQWJsb2NrJTNCJTBBZmxvYXQlM0FsZWZ0JTNCJTBBY2xlYXIlM0Fib3RoJTNCJTBBJTdEJTBBJTIzcHJpY2UlMjAlN0IlMEFjb2xvciUzQSUyMzAwMDAwMCUzQiUwQWZvbnQtZmFtaWx5JTNBJTIwQXJpYWwlM0IlMEFmb250LXNpemUlM0ElMjAxMi4wcHQlM0IlMEFkaXNwbGF5JTNBYmxvY2slM0IlMEFmbG9hdCUzQWxlZnQlM0IlMEFjbGVhciUzQWJvdGglM0IlMEElN0QlMEElM0MlMkZzdHlsZSUzRSUwQSUzQ3NwYW4lMjBpZCUzRCd0aXRsZSclM0UlMjR0aXRsZSUzQyUyRnNwYW4lM0UlMEElM0NzcGFuJTIwaWQlM0QncHJpY2UnJTNFJUMyJUEzJTIwJTI0bGliLnNpbXBsZUZvcm1hdFByaWNlKCUyMCUyNHNhbGVQcmljZUdCUCUyQzIpJTNDJTJGc3BhbiUzRSUwQQ==&w=1025&h=40&t=A Test Product")
	   
	
	 	 
	 def tracked_as
	   return "EmailcreatePage"
	  end
	
			  
    end  
end


