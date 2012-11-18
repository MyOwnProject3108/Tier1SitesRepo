require 'json'
require 'net/http'

module Peerius
    class SmartAPI
        attr_reader :url
        attr_reader :version
        attr_reader :result
        attr_reader :json_request
         
        def initialize(site, version=nil, testserver=nil)
            @version = version.nil? ? "v1_1" : version
            if testserver.nil? then  
                @url = "https://#{site}.peerius.com/tracker/api/#{@version}/rest.pagex"
            else
                @url = "https://#{testserver}/tracker/api/#{@version}/rest.pagex"
            end
            @request_data = {
                "ip" => "0.0.0.0",
                "session" => "new",
                "cuid" => "new",
                "lang" => "en-gb",
                "site" => site,
                "currentURI" => site+"://unknown",
                "previousURI" => site+"://unknown",
                "clientToken" => "gfsdkl47gh3248", #livedemoshop
            }
            @json_request = ""
        end
        
        def track(options = {})           
            callAPI(@request_data.merge(options))
        end
        
        def callAPI(request)
            uri = URI(@url)

            if @version == "v1" 
                @json_request = JSON.generate(migrate_to_api_v1(request)) 
            else
                @json_request = JSON.generate(request)
            end

            params = { :jd => @json_request }
            uri.query = URI.encode_www_form(params) 
            
            resp = Net::HTTP.start(uri.host, use_ssl: true, verify_mode:OpenSSL::SSL::VERIFY_NONE) do |http|
                 http.get uri.request_uri
            end
            data = resp.body

            # we convert the returned JSON data to native Ruby
            # data structure - a hash
            @result = JSON.parse(data)
        end
        
        def migrate_to_api_v1(data)
            mappings = {
                "lang" => "location",
                "currentURI" => "currentUrl",
                "previousURI" => "referer",
            }
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
    end
end