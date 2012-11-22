require 'benchmark'
require 'pp'
require_relative '../features/support/smart_api/smart_api'

#@api = Peerius::SmartAPI.new("ctshirts", "v1_1", "uat.peerius.com")
@api = Peerius::SmartAPI.new("livedemoshop", "v1_1", "uat.peerius.com")
@api.json_type = 'other'
#@api.json_clientToken = '677ab692r2t3'

timings = [] 
10.times do 
    time = Benchmark.realtime do
      @api.track 
      #pp @api.result
    end
    timings.push(time) 
end
pp @api.result
puts "Ran #{timings.count} times"
puts "Max: #{timings.max*1000} ms"
puts "Min: #{timings.min*1000} ms"
puts "Average: #{(timings.reduce(:+)*1000)/timings.count} ms" 
