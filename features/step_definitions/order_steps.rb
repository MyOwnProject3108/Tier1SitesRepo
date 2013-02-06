When /^I purchase "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

When /^I add the current product to the basket$/ do
  @current_page.size_select_element.when_visible.options.first.click
  @current_page.add_to_basket_element.when_visible
  @current_page.add_to_basket
end

When /^I click checkout$/ do
  @current_page.basket_checkout_element.when_visible
  @current_page.basket_checkout
end