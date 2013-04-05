Then /^I enter email name as "(.+)"$/ do |emailwidget|
@current_page.emailwidget = emailwidget
end

Then /^I enter email content width as (\d+) and height as (\d+)$/ do |width, height|
  @current_page.width = width
  @current_page.height = height
end

Then /^I select title color "(.+)"$/ do |color|
  @current_page.title_color_picker_element.click
  
  case color
  when "yellow" then index = 24
  when "red" then index = 14
  when "green" then index = 9
  when "blue" then index = 11
  else 
    puts "Unknown color: #{color}"
	index = 0
  end
  
  @current_page.div_element(:id=>"color_selector").div_element(:class =>"color_swatch", :index => index).click

end

Then /^I select price color "(.+)"$/ do |color|
  @current_page.price_color_picker_element.click
  
  case color
  when "yellow" then index = 24
  when "red" then index = 14
  when "green" then index = 9
  when "blue" then index = 11
  else 
    puts "Unknown color: #{color}"
	index = 0
  end
  
  @current_page.div_element(:id=>"color_selector").div_element(:class =>"color_swatch", :index => index).click
end

Then /^I select background color "(.+)"$/ do |color|
   @current_page.background_color_picker_element.click
  
  case color
  when "yellow" then index = 24
  when "red" then index = 14
  when "green" then index = 9
  when "blue" then index = 11
  else 
    puts "Unknown color: #{color}"
	index = 0
  end
  
  @current_page.div_element(:id=>"color_selector").div_element(:class =>"color_swatch", :index => index).click
end

