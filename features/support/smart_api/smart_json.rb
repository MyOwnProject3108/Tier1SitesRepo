require 'json'
require 'net/http'
require 'benchmark'
require 'logger'


module Peeriusjson
    class SmartJSON
        attr_reader :url
        attr_reader :version
        attr_reader :result
        attr_reader :request_data
        attr_reader :json_request
        attr_reader :response_times
		
		# @logger.add_checker do |page|
		# page.text.include?("Server Error") and puts "Application exception or 500 error!"
		# end
		# @logger.goto "www.mywebsite.com/page-with-error"
		# "Server error! (RuntimeError)"
         
        def initialize(site, version=nil, testserver=nil, useSSH=nil)
            file = open("#{site}_smart_json.log", File::WRONLY | File::APPEND | File::CREAT)
            @logger = Logger.new(file)
            @version = version.nil? ? "v1_1" : version
            @useSSH = useSSH.nil? ? true : useSSH
            urlPrefix = @useSSH ? "https" : "http" 
            if testserver.nil? then  
                @url = urlPrefix + "://#{site}.peerius.com/tracker/api/#{@version}/rest.pagex"
            else
                @url = urlPrefix + "://#{testserver}/tracker/api/#{@version}/rest.pagex"
            end
			@logger.execute_script("return jQuery.active") == '0'
            @logger.info(@url)	
            @request_data = {
                "type" => "home",
                "channel" => "web",
                "lang" => "en-gb",
                "recContent" => "refCodeOnly",
            }
            @json_request = ""
            @response_times = []
        end
        
        def average_response_time
            response_times.reduce(:+) / response_times.count
        end
        
        def session
            @request_data["session"]
        end
        
        def session=(session)
            @request_data["session"]  = session
        end
        
        def cuid
            @request_data["cuid"]
        end
        
        def cuid=(cuid)
            @request_data["cuid"] = cuid
        end
        
        def track(options = {})           
            callAPI(@request_data.merge(options))
            clearAPI()
        end
        
        # Clears the request specific parameters
        def clearAPI
            persist = ["ip", "session", "cuid", "lang", "site", "currentURI", "previousURI", "clientToken", "recContent"]
            @request_data.keep_if {|key,value| persist.include? key}          
        end
        
        def callAPI(request)
            uri = URI(@url)

            if @version == "v1" 
                @json_request = JSON.generate(migrate_to_api_v1(request)) 
            else
                @json_request = JSON.generate(request)
            end
            @logger.info("Request: " + @json_request)            
            params = { :jd => @json_request }
            uri.query = URI.encode_www_form(params)
            
            resp = "" 
            time = Benchmark.realtime do
                resp = Net::HTTP.start(uri.host, uri.port, use_ssl: @useSSH, verify_mode: OpenSSL::SSL::VERIFY_NONE) do |http|
                     http.get uri.request_uri
                end
            end

            data = resp.body
            @response_times.push(time*1000)
            @logger.info("Response: " + data)

            # we convert the returned JSON data to native Ruby
            # data structure - a hash
            @result = JSON.parse(data)
                                
            # Use the returned session and cuid
            if @result["session"] && @result["session"]["session"] then
                @request_data["session"] = @result["session"]["session"].to_s
                @request_data["cuid"] = @result["session"]["cuid"].to_s
            end 
        end
        
        def migrate_to_api_v1(data)
            mappings = {
                "lang" => "location",
                "currentURI" => "currentUrl",
                "previousURI" => "referer",
            }
            
            # Reformat basket request
            if data["basket"] then
                data["products"] = data["basket"]["items"]
                data.delete("basket")
            end
            
            # Reformat checkout request
            if data["checkout"] and data["checkout"]["items"] then
                data["checkout"]["products"] = data["checkout"]["items"]
                data["checkout"].delete("items")
            end
            
            # Apply mappings
            Hash[data.map {|k, v| [mappings[k] || k, v] }]
        end
        
        # if json_<key> does not exist add the key/value to @json_request
        def method_missing(meth, *args, &block)
            if meth.to_s =~ /^json_(.+)=$/
                @request_data[$1] = args[0]
            else
              super
            end
        end
        
        def rec_widgets
            @result["smartRecs"]
        end
        
        def ranking_widgets
            @result["smartRanking"]
        end
        
        def content_creatives
            @result["smartContent"]["creatives"]
        end
        
        def total_recs
            rec_widgets.inject(0){|sum, widget| sum + widget["recs"].count}
        end
        
        def total_ranking_items
            ranking_widgets.inject(0){|sum, widget| sum + widget["products"].count}
        end
        
        def has_smart_content?
            @result.has_key?("smartContent") && @result["smartContent"]["creatives"].count > 0             
        end
        
        def has_smart_recs?
            @result.has_key?("smartRecs") && @result["smartRecs"].count > 0
        end
        
        def has_smart_ranking_content?
            @result.has_key?("smartRanking") && @result["smartRanking"].count > 0
        end
        
        def has_smart_product_content?
            has_smart_recs? || has_smart_content? || has_smart_ranking_content?
        end
        
        #
        # Clicks
        #
        def ranking_click(product_i=0, widget_i=0)
            impressionId = ranking_widgets[widget_i]["impressionId"]
            productId = ranking_widgets[widget_i]["products"][product_i]["product"]["productId"]
            refcode = ranking_widgets[widget_i]["products"][product_i]["product"]["refCode"]
            @request_data["type"] = 'product'
            @request_data["product"] = {"refCode" => "#{refcode}"}
            @request_data["info"] = {
                "smartRanking" => {
                    "click" => {
                        "impressionId" => impressionId.to_i,
                        "productId" => productId.to_i,
                    }
                }
            }
        end
        
        def rec_click(product_i=0, widget_i=0)
            productId = rec_widgets[widget_i]["recs"][product_i]["id"]
            refcode = rec_widgets[widget_i]["recs"][product_i]["refCode"]
            @request_data["type"] = 'product'
            @request_data["product"] = {"refCode" => "#{refcode}"}
            @request_data["info"]  = {
                "smartRecs" => {
                        "click" => productId.to_i,
                }
            }
        end
        
        def creative_click(product_i=0)
            creativeId = content_creatives[product_i]["id"]
            @request_data["type"] = 'category'
            @request_data["category"] = "ties"
            @request_data["info"]  = {
                "smartContent" => {
                        "click" => creativeId.to_i,
                }
            }
        end
    end
end
