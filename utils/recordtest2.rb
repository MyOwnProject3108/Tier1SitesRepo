require 'pp'
require 'logger'
require "rubygems"
require "java"
require "sqljdbc4.jar"

Java::com.microsoft.sqlserver.jdbc.SQLServerDriver
url = 'jdbc:sqlserver://isopoda:1433;databaseName=testdenorm3'
conn = java.sql.DriverManager.get_connection(url, "3duser", "3d534rch")
statement = conn.create_statement

q = "SELECT  [id]
      ,[creative_id]
      ,ACI.[baid]
      ,[site_id]
      ,[clicked]
      ,[ab]
      ,[dynamicContentABConfig_id]
      ,[dynamicContent_id]
      ,AccessDateTime
  FROM [testdenorm3].[dbo].[AdaptiveContentImpressions] ACI
  INNER JOIN [testdenorm3].[dbo].[BrowsingAttributes] BA ON ACI.baid=BA.BAID
  Where site_id=142
  ORDER BY AccessDateTime DESC"
rs = statement.execute_query(q)

while (rs.next) do
  puts rs.getObject('clicked')
end

statement.close
