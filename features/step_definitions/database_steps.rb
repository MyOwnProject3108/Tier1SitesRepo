When(/^I wait for denormalisation to finish$/) do
  sleep 10
end

Then(/^I should see (.+) (\d+) SMART\-content impressions? in the DB$/) do |comparison, expected_impressions|
	db = @sites[@site]["db"]
	q = "select * from AdaptiveContentImpressions aci inner join [BrowsingAttributes] ba on aci.baid=ba.BAID where sessionID="+@api.session
	result = db.execute(q)
	
  case comparison
  when "at least"
    result.count.should be >= expected_impressions.to_i
  when "exactly"
    result.count.should be == expected_impressions.to_i
  else
    fail('Unexpected comparison: '+comparison)
  end
	
  #result.each do |row|
	#	pp row
	#end
end

Then(/^I should see (.+) (\d+) SMART\-content clicks? in the DB$/) do |comparison, expected_clicks|
  db = @sites[@site]["db"]
	q = "select * from AdaptiveContentImpressions aci inner join [BrowsingAttributes] ba on aci.baid=ba.BAID where sessionID="+@api.session+" and clicked=1"
	result = db.execute(q)
	
  case comparison
  when "at least"
    result.count.should be >= expected_clicks.to_i
  when "exactly"
    result.count.should be == expected_clicks.to_i
  else
    fail('Unexpected comparison: '+comparison)
  end
  
  #result.each do |row|
	#	pp row
	#end
end

Then(/^I should see no SMART\-content clicks in the DB$/) do
  db = @sites[@site]["db"]
	q = "select * from AdaptiveContentImpressions aci inner join [BrowsingAttributes] ba on aci.baid=ba.BAID where sessionID="+@api.session+" and clicked=1"
	result = db.execute(q)
	result.count.should be == 0
  
	#result.each do |row|
	#	pp row
	#end
end