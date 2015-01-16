require 'json'
require 'net/http'
require 'benchmark'
require 'logger'

module Peerius
    class SmartAPI
        attr_reader :url
        attr_reader :version
        attr_reader :result
        attr_reader :request_data
        attr_reader :json_request
        attr_reader :response_times
         
        def initialize(site, version=nil, testserver=nil, useSSH=nil)
            file = open("logs/api_logs/#{site}_smart_api.log", File::WRONLY | File::APPEND | File::CREAT)
            @logger = Logger.new(file)
        #    @version = version.nil? ? "v1_1" : version
		 	@version = version.nil? ? "v1_2" : version
            @useSSH = useSSH.nil? ? true : useSSH
            urlPrefix = @useSSH ? "https" : "http" 
            if testserver.nil? then  
                @url = urlPrefix + "://#{site}.peerius.com/tracker/api/#{@version}/rest.pagex"
            else
                @url = urlPrefix + "://#{testserver}/tracker/api/#{@version}/rest.pagex"
            end
            @logger.info(@url)
            @request_data = {
                "ip" => "0.0.0.0",
                "session" => "new",
                "cuid" => "new",
                "lang" => "en-gb",
                "site" => site,
                "currentURI" => site+"://unknown",
                "previousURI" => site+"://unknown",
				"clientToken" => "gfsdkl47gh3248u4t", #livedemoshop
                #"recContent" => "refCodeOnly",
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
		
        def ranking_recs
            @result["smartRanking"]["recs"]
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
			##modified by Shakir for recs click
			#productId = rec_widgets[product_i]["id"]
			##modified by Shakir for recs click
            refcode = rec_widgets[widget_i]["recs"][product_i]["refCode"]
			#refcode = rec_widgets[product_i]["refCode"]
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
		
		def clientToken
            @request_data["clientToken"]
        end
        
        def clientToken=(clientToken)
            @request_data["clientToken"] = clientToken
        end
		
		#Added for country="GB" rule----
		def country_gb()
            @request_data = {
			"type"		=> "home",
                "ip" => "89.187.117.101",
                "session" => "new",
                "cuid" => "new",
                "lang" => "en",
                "site" => "ctshirts",
                "currentURI" => "http://www.ctshirts.co.uk",
                "previousURI" => "http://www.ctshirts.co.uk",
                "clientToken" => "677ab692r2t3u4t", 
                "recContent" => "refCodeOnly",
            }
            @json_request = ""
            @response_times = []
        end
		
			#Added for country="US" rule----
		def country_us()
            @request_data = {
			"type"		=> "home",
                "ip" => "12.25.205.51",
                "session" => "new",
                "cuid" => "new",
                "lang" => "en",
                "site" => "ctshirts",
                "currentURI" => "http://www.ctshirts.co.uk",
                "previousURI" => "http://www.ctshirts.co.uk",
                "clientToken" => "677ab692r2t3u4t", 
                "recContent" => "refCodeOnly",
            }
            @json_request = ""
            @response_times = []
        end
		
			#Added for country="FR" rule----
		def country_fr()
            @request_data = {
			"type"		=> "home",
                "ip" => "178.251.201.141",
                "session" => "new",
                "cuid" => "new",
                "lang" => "en",
                "site" => "ctshirts",
                "currentURI" => "http://www.ctshirts.co.uk",
                "previousURI" => "http://www.ctshirts.co.uk",
                "clientToken" => "677ab692r2t3u4t", 
                "recContent" => "refCodeOnly",
            }
            @json_request = ""
            @response_times = []
		end
		
		def product_gender()
		@request_data = {
			"ip" => "0.0.0.0",
			"session" => "new",
			"cuid" => "new",
			"site" => "ctshirts",
			"clientToken" => "677ab692r2t3u4t",
			"lang" => "en",
			"currentURI" => "http://www.ctshirts.co.uk",
			"previousURI" => "http://www.ctshirts.co.uk/men%27s-shirts/men%27s-formal-shirts/Cream-poplin-classic-fit-shirt?q=ukgob||SP003CRM|||||221,||||||||",
			"recContent" => "refCodeOnly",
			"type" => "product",
			"product" => {
				"refCode" => "SP003CRM"
						}
			}
            @json_request = ""
            @response_times = []
		end
		
		def home_keyword_google_search()
            @request_data = {
			"type"		=> "home",
                "ip" => "0.0.0.0",
                "session" => "new",
                "cuid" => "new",
                "lang" => "en",
                "site" => "ctshirts",
                "currentURI" => "http://www.ctshirts.co.uk?peeriusTestGoogle=shirt",
                "previousURI" => "http://www.ctshirts.co.uk",
                "clientToken" => "677ab692r2t3u4t", 
                "recContent" => "refCodeOnly",
            }
            @json_request = ""
            @response_times = []
		end
		
		def home_organic()
            @request_data = {
			"type"		=> "home",
                "ip" => "0.0.0.0",
                "session" => "new",
                "cuid" => "new",
                "lang" => "en",
                "site" => "ctshirts",
                "currentURI" => "http://www.ctshirts.co.uk",
                "previousURI" => "http://www.google.com/search?q=ct+shirts",
                "clientToken" => "677ab692r2t3u4t", 
                "recContent" => "refCodeOnly",
            }
            @json_request = ""
            @response_times = []
		end
		
		def home_ppc()
            @request_data = {
			"type"		=> "home",
                "ip" => "0.0.0.0",
                "session" => "new",
                "cuid" => "new",
                "lang" => "en",
                "site" => "ctshirts",
                "currentURI" => "http://www.ctshirts.co.uk",
                "previousURI" => "http://www.google.co.uk/aclk?sa=l&ai=CHWoay7eHUNrEI4yU0wXnwYGABs-yuc0C18btlDfogq7xBQgAEAEgtlQoA1DH_sn-_P____8BYLu-roPQCqABoJ-J_wPIAQGpAti0WObCw7o-qgQbT9AbVPOnnDAAz592WFxXAAu4UJRHPjy_ZC6UgAWQTg&sig=AOD64_13y4pr5DlT2zSMegw5YXbiwo2YcA&ved=0CB4Q0Qw&adurl=http://akatracking.esearchvision.com/esi/redirect.html%3Fesvt%3D58-GOUKE%26esvq%3Dc%2520t%2520shirts%26esvadt%3D999999-106780-176-1%26esvcrea%3D14719139063%26esvplace%3D%26transferparams%3D0%26esvaid%3D40144%26url%3Dhttp%253a%252f%252fwww.ctshirts.co.uk%252fDefault.aspx%253fq%253dukgob%25257C%25257C%25257C%25257C%25257C%25257C%25257C%25257C%25257C%25257C%25257C%25257C%25257C%25257C%25257C&rct=j&q=%20ct%20shirts&cad=rja",
                "clientToken" => "677ab692r2t3u4t", 
                "recContent" => "refCodeOnly",
            }
            @json_request = ""
            @response_times = []
		end
		
		def home_tags()
            @request_data = {
			"type"		=> "home",
                "ip" => "0.0.0.0",
                "session" => "new",
                "cuid" => "new",
                "lang" => "en",
                "site" => "ctshirts",
                "currentURI" => "http://www.ctshirts.co.uk/Default.aspx?q=|||||||||||||||&spr=1&peeriusTestGoogle=shirt",
                "previousURI" => "http://www.ctshirts.co.uk",
                "clientToken" => "677ab692r2t3u4t", 
                "recContent" => "refCodeOnly",
            }
            @json_request = ""
            @response_times = []
		end
		
		def home_source()
            @request_data = {
			"type"		=> "home",
                "ip" => "0.0.0.0",
                "session" => "new",
                "cuid" => "new",
                "lang" => "en",
                "site" => "ctshirts",
                "currentURI" => "http://www.ctshirts.co.uk",
                "previousURI" => "",
                "clientToken" => "677ab692r2t3u4t", 
                "recContent" => "refCodeOnly",
            }
            @json_request = ""
            @response_times = []
		end

		def home_city()
            @request_data = {
			"type"		=> "home",
                "ip" => "83.244.219.186",
                "session" => "new",
                "cuid" => "new",
                "lang" => "en",
                "site" => "ctshirts",
                "currentURI" => "http://www.ctshirts.co.uk",
                "previousURI" => "http://www.ctshirts.co.uk",
                "clientToken" => "677ab692r2t3u4t", 
                "recContent" => "refCodeOnly",
            }
            @json_request = ""
            @response_times = []
        end
				
		def variant_info(item)
            @request_data = {
			"type"  => "order",
			"ip" => "0.0.0.0",
			"session"=> "new",
			"cuid"=> "new",
			"lang"=>"en-gb",
			"site"=> "topshop",
			"currentURI"=> "topshop://unknown",
			"previousURI"=>"topshop://unknown",
			"clientToken"=> "89hyuaa2da3a1",
			"recContent"=> "refCodeOnly",
			"order"=> {
				"orderNo"=> "API-#{item}-#{Time.now.to_i}",
				"items" => [{
				"refCode"=> "TS13A56EGRN",
				"variant"=>{"colour" => "green","size"=> "4"},
				"qty"=> "4",
				"price"=> "32.5"
				},
			],
			"currency"=> "GBP",
			"subtotal"=> "153",
			"shipping"=> "11.75",
			"total"=> "164.75",
		}
		}
            @json_request = ""
            @response_times = []
        end
		
    end
	end

