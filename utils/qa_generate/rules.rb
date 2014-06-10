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
		optional = false
		if step[0].include?("optional")
			action = step[0].partition("_").first
			optional = true
		else 
			action = step[0]
		end
		case action
		when "alert"
			rule += "And I close the browser alert\n  "
		when "pause"
			rule += "And I pause for #{step[1]} second" + (step[1]>1?"s\n  ":"\n  ")
		when "text_field" #you could generate a random value every time you run qagenerate to avoid tests from failing after some time 
			text_value = step[3]
			if step[4]
			    if step[4].include?("autogenerate")
			    	date_type = step[4].partition("_").last
					rule += "And I auto-generate #{date_type} using \"#{text_value}\" for the #{action} with #{step[1]} \"#{step[2]}\"\n  "
				else
					text_value = eval(step[4]+'("'+text_value+'")')
				    rule += "And I enter \"#{text_value}\" in the #{action} with #{step[1]} \"#{step[2]}\"\n  "
				end
			else
				rule += "And I enter \"#{text_value}\" in the #{action} with #{step[1]} \"#{step[2]}\"\n  "
			end
			
		when "select_list"
		  	rule += "And I select \"#{step[3]}\" on the #{action} with #{step[1]} \"#{step[2]}\"\n  "
		when "url"
		  	rule += "And I go to the #{step[1]} page\n  "
		else 
		  	rule += "And I click the #{action} with #{step[1]} \"#{step[2]}\"\n  " if optional==false
		  	rule += "And I click optional #{action} with #{step[1]} \"#{step[2]}\"\n  " if optional==true
		#else
		#	rule += "And I click the #{action} with #{step[1]} \"#{step[2]}\"\n  " 
		end
	end
	return rule
end

 def expect_content_rule(expected_content)
    rule1 = "And the debug info should show "

    if expected_content > 0
        rule1 += "at least #{expected_content}"
    else
        rule1 += "no"
    end

    rule1 += " SMART-content"
    return rule1
end

@rand_value = rand(1..999999).to_s

def generate_firstname(seed_value)
	prefix = seed_value
	#rand_value = rand(1..999999).to_s
    return prefix+@rand_value
end

def generate_lastname(seed_value)
	prefix = seed_value
    return prefix+@rand_value
end

def generate_email(seed_value)
	prefix = seed_value.partition('@').first
	domain = seed_value.partition('@').last
    return prefix+@rand_value+'@'+domain
end