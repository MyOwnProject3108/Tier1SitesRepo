Given /^I clear my browser cookies$/ do
  @browser.cookies.clear
end

Given(/^I create a session and cuid cookie from the api$/) do
  @browser.cookies.add 'peerius_sess', $current_session.to_s
  @browser.cookies.add 'peerius_user', 'cuid:'+$current_cuid.to_s
end

When(/^I pass the session and cuid cookie to the api$/) do
  @browser.cookies.to_a.each do |cookie|
    #pp cookie
    case cookie[:name]
    when /peerius_user/
      cuid = cookie[:value][/cuid:(\d+)/,1]
      #pp cuid
      @api.cuid = cuid
    when /peerius_sess/
      session = cookie[:value][/(\d+)/]
      #pp session
      @api.session = session
    end
  end
  
end

