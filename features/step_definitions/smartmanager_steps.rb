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
 # on_page(Smartmanager::CreatewidgetPage).widgetname = widgetname
 @current_page.widgetname = widgetname
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
  #@current_page.delete_submit_element.click
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

When /^I click AB tests$/ do
  on_page(Smartmanager::AdministrationPage).AB_group_submit_element.click
end

Then /^I enter A=(.+) and B=(.+)$/ do |percentage1, percentage2|
   on_page(Smartmanager::GroupPage).percentage1=percentage1
   on_page(Smartmanager::GroupPage).percentage2=percentage2
end

Then /^I select "(.+)" for both groups$/ do |group|
 on_page(Smartmanager::GroupPage).select_list_element(:name => 'self[PRODUCT-A-0]').select 'AutoTestWidgetEdit'
 on_page(Smartmanager::GroupPage).select_list_element(:name => 'self[PRODUCT-B-0]').select 'AutoTestWidgetEdit'
end

Then /^I select "(.+)" for groupA$/ do |groupupdate|
  @current_page.select_list_element(:name => 'self[PRODUCT-A-0]').select 'None'
end

Then /^I click update$/ do
  @update_text = @current_page.confirm(true) do
		#on_page(Smartmanager::GroupPage).update_submit_element.click
		@current_page.update_submit_element.click		
  end
end

Then /^I click create$/ do
  @current_page.create_submit_element.click
end

Then /^I click deactivate$/ do
	@confirm_text = @current_page.confirm(true) do
		#on_page(Smartmanager::GroupPage).deactivate_submit_element.click
		@current_page.deactivate_submit_element.click
	end
end

Then /^I click delete group$/ do
	@delete_text = @current_page.confirm(true) do
		#on_page(Smartmanager::GroupPage).delete_submit_element.click
		@current_page.delete_submit_element.click
	end
end

Then /^the text from the confirm should read "(.+)"$/ do |deactivatedtext|
  @confirm_text.should == deactivatedtext
end

Then /^the text from the update should read "(.*?)"$/ do |updatedtext|
  @update_text.should == updatedtext
end

Then /^the text from the delete should read "(.*?)"$/ do |deletedtext|
  @delete_text.should == deletedtext
end

Given /^I click logout$/ do
  @current_page.logout_element.click
end
