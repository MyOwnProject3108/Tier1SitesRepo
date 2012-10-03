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