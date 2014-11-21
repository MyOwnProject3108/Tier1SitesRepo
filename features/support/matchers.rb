RSpec::Matchers.define :contain_result do |result| 
    match do |page|
        page.results.include? result 
    end
    failure_message_for_should do |page|
        "Expected search results to include '#{result}'"
    end
    failure_message_for_should_not do |page|
        "Expected search results not to include '#{result}'"
    end
end

RSpec::Matchers.define :be_tracked_as do |page_type| 
    page_type = page_type.downcase 
    match do |page|
        page.tracked_as.downcase.include? page_type
    end
    failure_message_for_should do |page|
        "Expected to track as '#{page_type.downcase}' actually tracked as '#{page.tracked_as.downcase}'"
    end
end


RSpec::Matchers.define :have_error_message do |message|
 match do |page|
 page.error_messages.include? message
 end
 failure_message_for_should do |page|
        "Expected error message was '#{message}'"
    end
 end
 
 
 RSpec::Matchers.define :have_success_message do |message|
 match do |page|
 page.success_messages.include? message
 end
 failure_message_for_should do |page|
        "Expected success message was '#{message}'"
    end
 end