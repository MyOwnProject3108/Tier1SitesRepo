require 'pp'
require 'tiny_tds'

client = TinyTds::Client.new(:username => '3duser', :password => '3d534rch', :host => 'testdb', :database => 'testdenorm3')

q = "SELECT  [id]
      ,[creative_id]
      ,ACI.[baid]
     ,[site_id]
      ,[clicked]
      ,[ab]
      ,[dynamicContentABConfig_id]
      ,[dynamicContent_id]
      ,AccessDateTime
  FROM [AdaptiveContentImpressions] ACI
  INNER JOIN [BrowsingAttributes] BA ON ACI.baid=BA.BAID
  Where site_id=142
  ORDER BY AccessDateTime DESC"
result = client.execute(q)

result.each do |row|
	pp row
end

client.close
