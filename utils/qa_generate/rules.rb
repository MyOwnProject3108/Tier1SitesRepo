def expect_recs_rule(expected_recs)
    rule = "And the debug info should show "

    if expected_recs > 0
        rule += "at least #{expected_recs}"
    else
        rule += "no"
    end

    rule += " SMART-recs"
    return rule
end

def checkout_steps_rule(checkout_steps)
  return "" if checkout_steps.nil?
  rule = ""
  
  pp checkout_steps
  
  checkout_steps.each do |step|
    case step[0]
    when "text_field"
      rule += "And I enter \"#{step[4]}\" on the #{step[0]} with #{step[1]} \"#{step[2]}\"\n"
    else
      rule += "And I click on the #{step[0]} with #{step[1]} \"#{step[2]}\"\n"
    end
  end

  return rule
end