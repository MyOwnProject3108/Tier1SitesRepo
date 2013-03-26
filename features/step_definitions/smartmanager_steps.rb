Then /^I should see an "(.+)" message$/ do |message|
  @current_page.error_message.should == message
end

#When /^I click (.+) on the smartmanager (.+)page$/ do |smartproduct,page|
#    # Turn the page description into a page classname (e.g. search page -> SearchPage)
#    page_class_name = page.split.collect!{|x| x.capitalize}.join
#	on_page("Smartmanager"+'::'+page_class_name+'Page') do |page|
#	@current_page.smartproduct_submit_element.click
# end
#end

#When /^I click (.+) on the smartmanager (.+)page$/ do |smartproduct, page|
    # Turn the page description into a page classname (e.g. search page -> SearchPage)
 #   page_class_name = page.split.collect!{|x| x.capitalize}.join
	#on_page("Smartmanager"+'::'+page_class_name+'Page') do |page|
	#case smartproduct
	#when "config"
	#	page.config_link.click
	#when "reporting"
	#	page.reporting_link.click
	#end
#end

When /^I click on the smartmanger reporting link$/ do
  @current_page.reporting_link_element.click
end

When /^I click on the smartmanger merchandising link$/ do
@current_page.merchandising_link_element.click
end


When /^I click on the smartmanger email link$/ do
  @current_page.email_link_element.click
end

When /^I click on the smartmanger config link on the home page$/ do
  @current_page.config_link_element.click
  end

When /^I click on the smartmanger landing link$/ do
  @current_page.landing_link_element.click
end

When /^I click ranking on the smartmanager home page$/ do
  @current_page.ranking_link_element.click
end

When /^I click content on the smartmanager home page$/ do
  @current_page.content_link_element.click
end

When /^I click settings on the smartmanager home page$/ do
@current_page.settings_link_element.click
end

When /^I click on the new button on the widgets page$/ do
  @current_page.new_widget_submit_element.click
end

When /^I click on the list of available widgets on the administration page$/ do
  @current_page.list_widgets_link_element.click
end


When /^I click on the decide widgets per page on the administration page$/ do
@current_page.decide_widgets_link_element.click
end
#When /^I click new$/ do
 # on_page(Smartmanager::WidgetsPage).new_widget_element.click
#end


Then /^I enter the widget name as "(.+)"$/ do |widgetname|
  @current_page.widgetname = widgetname
 end

Then /^I enter the widget alias as "(.+)"$/ do |widgetaliasname|
   @current_page.widgetaliasname = widgetaliasname
end

Then /^I select the widget algorithm as "(.+)"$/ do |widgetalgorithm|
  #on_page(Smartmanager::CreatewidgetPage).select_list_element(:class => "widgetsSelect").select 'Product Catalog'
  @current_page.widgetalgorithm = widgetalgorithm
 end

 Then /^I select the html template as "(.+)"$/ do |htmltemplate|
  #on_page(Smartmanager::CreatewidgetPage).select_list_element(:name => "html").select 'product-bottom.html'
  @current_page.htmltemplate = htmltemplate
  end
  
Then /^I select the css template as "(.+)"$/ do |csstemplate|
 # on_page(Smartmanager::CreatewidgetPage).select_list_element(:name => "css").select 'product-bottom.css'
 @current_page.csstemplate = csstemplate
  end

Then /^I enter maximum recs visible as (\d+)$/ do |maxrecs|
  @current_page.maxrecs = maxrecs
end

Then /^I select the widget injection point as "(.+)"$/ do |injectionpoint|
 #on_page(Smartmanager::CreatewidgetPage).select_list_element(:id => "injectionPoint").select 'product bottom'
 @current_page.injectionpoint = injectionpoint
 end

 Then /^I submit the widget form$/ do
 @current_page.try_submit_element.click
 end
 
# When /^I click on the save widget button$/ do
 #@current_page.save_submit_element.click
 #end
 
  When /^I click on the (.+) widget button$/ do |widgetsubmit|
 @current_page.widget_submit_element.click
 end
 
 
 #Then /^I click try$/ do
 #on_page(Smartmanager::CreatewidgetPage).try_submit_element.click
#end

Then /^I should see "(.+)" message$/ do |widgetsuccessmessage|
	@current_page.widget_success_message.should == widgetsuccessmessage
 #on_page(Smartmanager::ConfigurationPage).success_message.should == message
end

#Then /^I click decide widgets per page$/ do
 # on_page(Smartmanager::AdministrationPage).decide_widgets_submit_element.click
#end

#Then /^I select "(.+)"$/ do |savedwidget|
 # on_page(Smartmanager::PerPage).select_list_element(:name => "widgets['PRODUCT'][0]").select 'AutoTestWidget'
#end

Then /^I select the widget as "(.+)"$/ do |savedwidget|
@current_page.savedwidget = savedwidget
end

Then /^I click edit link on the widgets page$/ do
  @current_page.edit_submit_element.click
end

Then /^I click duplicate link on the widgets page$/ do
  @current_page.duplicate_submit_element.click
end

When /^I click on the menu link on the widgets page$/ do
  @current_page.menu_submit_element.click
end



#When /^I click edit$/ do
 # on_page(Smartmanager::WidgetsPage).edit_submit_element.click
#end

#When /^I click duplicate$/ do
 # on_page(Smartmanager::WidgetsPage).duplicate_submit_element.click
#end

When /^I click delete$/ do
  on_page(Smartmanager::WidgetsPage).delete_submit_element.click
  #@current_page.delete_submit_element.click
end

#When /^I click menu$/ do
 # on_page(Smartmanager::WidgetsPage).menu_submit_element.click
#end

#Then /^I click save$/ do
 # on_page(Smartmanager::WidgetsPage).save_widget_element.click
#end

#Then /^I click back$/ do
 # on_page(Smartmanager::ConfigurationPage).back_submit_element.click
#end

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

When /^I click on the create link on the email page$/ do
  @current_page.create_link_element.click
end


#Then /^I click create$/ do
 # @current_page.create_submit_element.click
#end

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
