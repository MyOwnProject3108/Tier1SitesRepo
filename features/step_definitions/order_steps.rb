
When /^I add the current product to the basket$/ do
@browser.execute_script("window.confirm = function() {return false}")
  @current_page.add_to_basket_element.when_present.click
end

When /^I click checkout$/ do
  @current_page.basket_checkout_element.when_present.click
end

When /^I remove all of the products from the basket$/ do
  
# links = @current_page.remove_product_links.collect{|x| x.attribute('href')}
 links = @current_page.remove_product_links
 links.each {|link|
	link.click
 }
 
end
