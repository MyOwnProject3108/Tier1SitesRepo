Then /^I enter content width as (.+) and height as (.+)$/ do |width, height|
  on_page(Smartmanager::EmailcreatePage).width = width
  on_page(Smartmanager::EmailcreatePage).height = height
end

Then /^I click title color picker$/ do
  #on_page(Smartmanager::EmailcreatePage).select_list_element(:class => 'color_swatch').select '#993300'
  #on_page(Smartmanager::EmailcreatePage).select_list_element(:class => 'color_picker').select '#993300'
  #on_page(Smartmanager::EmailcreatePage).div(:class => "color_swatch",:style => "background-color: rgb(153, 51, 102); border-color: rgb(0, 0, 0);").when_visible.click
 # on_page(Smartmanager::EmailcreatePage).fire_event.click	
  on_page(Smartmanager::EmailcreatePage).color_submit_element.click
 # on_page(Smartmanager::EmailcreatePage).wait_while_present
end

