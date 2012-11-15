When /^I use the "(.+)" ctshirts promotion$/ do |promotion|
  @current_page.use_promotion(promotion)
end