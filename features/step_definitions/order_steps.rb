
When /^I add the current product to the basket$/ do
  @current_page.add_to_basket_element.when_present.click
end

When /^I click checkout$/ do
  @current_page.basket_checkout_element.when_present.click
end



