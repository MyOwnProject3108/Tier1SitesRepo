Then /^I should see an "(.+)" message$/ do |message|
  @current_page.error_message.should == message
end

When /^I click reporting$/ do
 on_page(Smartmanager::HomePage).reporting_submit_element.click
end

When /^I click merchandising$/ do
 on_page(Smartmanager::HomePage).merchandising_submit_element.click
end

When /^I click email$/ do
  on_page(Smartmanager::HomePage).email_submit_element.click
end

When /^I click config$/ do
  on_page(Smartmanager::HomePage).config_submit_element.click
end

When /^I click landing$/ do
  on_page(Smartmanager::HomePage).landing_submit_element.click
end

When /^I click ranking$/ do
  on_page(Smartmanager::HomePage).ranking_submit_element.click
end

When /^I click content$/ do
  on_page(Smartmanager::HomePage).content_submit_element.click
end

When /^I click settings$/ do
on_page(Smartmanager::HomePage).settings_submit_element.click
end

When /^I click list of available widgets$/ do
  on_page(Smartmanager::AdministrationPage).list_widgets_submit_element.click
end

When /^I click new$/ do
  on_page(Smartmanager::WidgetsPage).new_widget_element.click
end

Then /^I enter name as "(.+)"$/ do |widgetname|
  on_page(Smartmanager::CreatewidgetPage).widgetname = widgetname
end

Then /^I enter alias as "(.+)"$/ do |widgetalias|
  on_page(Smartmanager::CreatewidgetPage).widgetalias = widgetalias
end

Then /^I select algorithm as "(.+)"$/ do |algorithm|
  on_page(Smartmanager::CreatewidgetPage).select_list_element(:class => "widgetsSelect").select 'Product Catalog'
 end

 Then /^I select html as "(.+)"$/ do |html|
  on_page(Smartmanager::CreatewidgetPage).select_list_element(:name => "html").select 'product-bottom.html'
  end
  
 Then /^I select css as "(.+)"$/ do |css|
  on_page(Smartmanager::CreatewidgetPage).select_list_element(:name => "css").select 'product-bottom.css'
  end

Then /^I enter max recs as (.+)$/ do |maxrecs|
  on_page(Smartmanager::CreatewidgetPage).maxrecs = maxrecs
end

Then /^I select injection point as "(.+)"$/ do |injectionpoint|
 on_page(Smartmanager::CreatewidgetPage).select_list_element(:id => "injectionPoint").select 'product bottom'
 end

 Then /^I click try$/ do
 on_page(Smartmanager::CreatewidgetPage).try_submit_element.click
end

Then /^I should see "(.+)" message$/ do |message|
 on_page(Smartmanager::ConfigurationPage).success_message.should == message
end

Then /^I click decide widgets per page$/ do
  on_page(Smartmanager::AdministrationPage).decide_widgets_submit_element.click
end

Then /^I select "(.+)"$/ do |savedwidget|
  on_page(Smartmanager::PerPage).select_list_element(:name => "widgets['PRODUCT'][0]").select 'AutoTestWidget'
end

When /^I click edit$/ do
  on_page(Smartmanager::WidgetsPage).edit_submit_element.click
end

When /^I click duplicate$/ do
  on_page(Smartmanager::WidgetsPage).duplicate_submit_element.click
end

When /^I click delete$/ do
  on_page(Smartmanager::WidgetsPage).delete_submit_element.click
end

When /^I click menu$/ do
  on_page(Smartmanager::WidgetsPage).menu_submit_element.click
end

Then /^I click save$/ do
  on_page(Smartmanager::WidgetsPage).save_widget_element.click
end

Then /^I click back$/ do
  on_page(Smartmanager::ConfigurationPage).back_submit_element.click
end

Then /^I should see "(.+)" meesgae$/ do |unsuccessmessage|
 on_page(Smartmanager::CreatewidgetPage).unsuccess_message.should ==  unsuccessmessage
end

Given /^I click on logout$/ do
  @current_page.logout_element.click
end
