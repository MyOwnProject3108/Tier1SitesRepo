Given /^I clear my browser cookies$/ do
  @browser.cookies.clear
end

Given(/^I create a session and cuid cookie from the api$/) do
  @browser.cookies.add 'peerius_sess', $current_session.to_s
  @browser.cookies.add 'peerius_user', 'cuid:'+$current_cuid.to_s
end