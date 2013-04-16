Then(/^I should see at least (\d+) SMART\-content impressions? in the DB$/) do |expected_impressions|
	db = @db0
    sleep 10
	q = "select * from AdaptiveContentImpressions aci inner join [BrowsingAttributes] ba on aci.baid=ba.BAID where sessionID="+@api.session
	result = db.execute(q)

	result.count.should be >= expected_impressions.to_i
	#result.each do |row|
	#	pp row
	#end
end

Then(/^I should see at least (\d+) SMART\-content clicks? in the DB$/) do |expected_clicks|
    db = @db0
    sleep 10
	q = "select * from AdaptiveContentImpressions aci inner join [BrowsingAttributes] ba on aci.baid=ba.BAID where sessionID="+@api.session+" and clicked=1"
	result = db.execute(q)

	result.count.should be >= expected_clicks.to_i
	#result.each do |row|
	#	pp row
	#end
end

Then(/^I should see no SMART\-content clicks in the DB$/) do
    db = @db0
    sleep 10
	q = "select * from AdaptiveContentImpressions aci inner join [BrowsingAttributes] ba on aci.baid=ba.BAID where sessionID="+@api.session+" and clicked=1"
	result = db.execute(q)

	result.count.should be == 0
	#result.each do |row|
	#	pp row
	#end
end