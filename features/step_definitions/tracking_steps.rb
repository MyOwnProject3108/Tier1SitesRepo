Then /^it should be tracked as Home page$/ do
  @current_page.should be_tracked_as "HomePage"
end