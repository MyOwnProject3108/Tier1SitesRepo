module Smartmanager
  
    class NewmerchandisingcreatePage
      include PageObject
      include PeeriusHelper
      
      URL = "https://#{FigNewton.base_url}/tracker/smartmanager/merchandising/edit.page"
      direct_url URL
	  h4(:page_identifier, :text => "Create Recommendation Campaign")
	  text_field(:merchcampaignname, :id => "name")
	  text_field(:merchdisplaytitle, :id => "slogan")
	  #select_list(:pagelocation, :id => "location", :value => "PRODUCT_PAGE")
	  button(:next_submit, :class => "btn pull-right next")
	  button(:save_button, :class => "save_campaign")
	  
	  
	  
	  
	  #text_field(:width, :id => 'productInfoWidth')
	  #text_field(:height, :id => 'productInfoHeight')
	  #text_field(:bgcolour, :name => "backgroundColour", :index => 0)
	  #text_field(:titlecolour, :class => "colorpicker", :index => 1)
	  #text_field(:pricecolour, :class => "colorpicker", :index => 2)
	  #button(:email_campaign_submit, :class => "btn pull-right next")
#	  select_list(:abc, :name => "title.Font", :value => "Verdana")
#	  select_list(:char, :name => "title.fontSize")
	#  select_list(font1, :text => "Verdana")
#	  a(:copy_configuration_link, :text => "Copy this configuration to a new Position")
	   #text_field(:items, :id => 'howMany')
#	   text_field(:email, :name => 'emailId')
#	   a(:test_email_link, :text => 'Trigger Test Email')
#	   a(:preview_email_link, :text => 'Preview Email')
#	   button(:save_email_submit, :class => 'submit120')
#	   a(:email_debuginfo_link, :text => "Click here for debug information")
	   #select_list(:norepeatrecs_submit, :text => '1')
#	   select_list(:hint, :name => 'hintsBySlot[0]')
#	   image(:expression_submit, :src => "/tracker/images/skin2/bolean.png")
#	   a(:add_expression_link, :href => "#add")
#	   a(:attribute_submit, :href => "#menu")
#	   a(:attrselect_link, :href => "#r.clientcategory")
	  # a(:attributes_submit,:href => "#attrs")
#	   text_field(:attr, :class => "ui-autocomplete-input")
#	   checkbox(:topups_submit, :id => "useTopups")
	  # image(:email_error_message, :src => "productInfoPreview.page?code=JTNDc3R5bGUlM0UlMEElMjNjb250ZW50JTIwJTdCJTBBYmFja2dyb3VuZCUzQSUyM0ZGRkZGRiUzQiUwQSU3RCUwQSUyM3RpdGxlJTIwJTdCJTBBY29sb3IlM0ElMjMwMDAwMDAlM0IlMEFmb250LWZhbWlseSUzQSUyMEFyaWFsJTNCJTBBZm9udC1zaXplJTNBJTIwMTIuMHB0JTNCJTBBZGlzcGxheSUzQWJsb2NrJTNCJTBBZmxvYXQlM0FsZWZ0JTNCJTBBY2xlYXIlM0Fib3RoJTNCJTBBJTdEJTBBJTIzcHJpY2UlMjAlN0IlMEFjb2xvciUzQSUyMzAwMDAwMCUzQiUwQWZvbnQtZmFtaWx5JTNBJTIwQXJpYWwlM0IlMEFmb250LXNpemUlM0ElMjAxMi4wcHQlM0IlMEFkaXNwbGF5JTNBYmxvY2slM0IlMEFmbG9hdCUzQWxlZnQlM0IlMEFjbGVhciUzQWJvdGglM0IlMEElN0QlMEElM0MlMkZzdHlsZSUzRSUwQSUzQ3NwYW4lMjBpZCUzRCd0aXRsZSclM0UlMjR0aXRsZSUzQyUyRnNwYW4lM0UlMEElM0NzcGFuJTIwaWQlM0QncHJpY2UnJTNFJUMyJUEzJTIwJTI0bGliLnNpbXBsZUZvcm1hdFByaWNlKCUyMCUyNHNhbGVQcmljZUdCUCUyQzIpJTNDJTJGc3BhbiUzRSUwQQ==&w=1025&h=40&t=A Test Product")
	   
	
	 	 
	 def tracked_as
	   return "NewmerchandisingcreatePage"
	  end
				  
    end  
end


