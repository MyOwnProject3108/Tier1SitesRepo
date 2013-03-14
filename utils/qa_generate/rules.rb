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

def extra_steps_rule(extra_steps)
  return "" if extra_steps.nil?
  rule = ""
  
  #pp extra_steps
  
  extra_steps.each do |step|
    case step[0]
    when "pause"
      rule += "And I pause for #{step[1]} seconds\n  " if step[1] > 1
      rule += "And I pause for #{step[1]} second\n  " if step[1] == 1
    when "text_field"
      rule += "And I enter \"#{step[3]}\" on the #{step[0]} with #{step[1]} \"#{step[2]}\"\n  "
    when "select_list"
      rule += "And I select \"#{step[3]}\" on the #{step[0]} with #{step[1]} \"#{step[2]}\"\n  "
    else
      rule += "And I click on the #{step[0]} with #{step[1]} \"#{step[2]}\"\n  "
    end
  end

  return rule
end