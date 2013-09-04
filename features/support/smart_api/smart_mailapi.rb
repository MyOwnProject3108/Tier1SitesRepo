require 'json'
require 'net/http'
require 'benchmark'
require 'logger'

module Peerius
    class SmartmailAPI
        attr_reader :url
        attr_reader :version
        attr_reader :result
        attr_reader :request_data
        attr_reader :json_request
        attr_reader :response_times
         
        def initialize(site, version=nil, testserver=nil, useSSH=nil)
            file = open("#{site}_smart_mailapi.log", File::WRONLY | File::APPEND | File::CREAT)
            @logger = Logger.new(file)
        	@version = version.nil? ? "v1_2" : version
            @useSSH = useSSH.nil? ? true : useSSH
            urlPrefix = @useSSH ? "https" : "http" 
            if testserver.nil? then  
                @url = urlPrefix + "://#{site}.peerius.com/tracker/api/v1_2/smmail/getwidgeturls.pagex"
            else
                @url = urlPrefix + "://#{testserver}/tracker/api/v1_2/smmail/getwidgeturls.pagex"
            end
            @logger.info(@url)
            @request_data = {
                "wid" => "0.0.0.0",
                "email" => "webtest@malinator.com",
                "rno" => "new",
                "site" => site,
                "currentURI" => site+"://unknown",
                "previousURI" => site+"://unknown",
                "clientToken" => "gfsdkl47gh3248", #livedemoshop
                "recContent" => "refCodeOnly",
            }
            @json_request = ""
            @response_times = []
        end
		
		
		 def callAPI(request)
            uri = URI(@url)

            
				@json_request = JSON.generate(request)
			
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
	end
	end