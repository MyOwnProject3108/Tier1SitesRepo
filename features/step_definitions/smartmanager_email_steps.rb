Then /^I enter content width as (.+) and height as (.+)$/ do |width, height|
  on_page(Smartmanager::EmailcreatePage).width = width
  on_page(Smartmanager::EmailcreatePage).height = height
end

Then /^I select title color as "(.+)"$/ do |color|
  on_page(Smartmanager::EmailcreatePage).select_list_element(:class => 'color_swatch').select '#993300'
end

