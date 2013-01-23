When /^I purchase "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

When /^I add the current product to the basket$/ do
  @current_page.add_to_basket_element.when_visible
  @current_page.add_to_basket
end