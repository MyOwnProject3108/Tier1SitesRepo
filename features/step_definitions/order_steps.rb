When /^I purchase "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

When /^I add the current product to the basket$/ do
  @current_page.size_select_element.options.first.click if @current_page.size_select?
  @current_page.size_link_element.click if @current_page.size_link?
  @current_page.add_to_basket_element.when_visible
  @current_page.add_to_basket
end

When /^I click checkout$/ do
  @current_page.basket_checkout_element.when_visible
  @current_page.basket_checkout
end



