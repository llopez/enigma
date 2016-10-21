module Enigma
  module Client
    def self.post(endpoint_path, payload = nil)
      uri = URI([Enigma.config.base_url, endpoint_path].join("/"))
      uri.query = URI.encode_www_form({token: Enigma.config.api_key})

      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = Enigma.config.use_ssl
      request = Net::HTTP::Post.new(uri.request_uri)
      request.content_type = "application/x-www-form-urlencoded"

      if payload
        request.body = payload.to_json
        request.content_type = 'application/json'
      end

      response = http.request(request)

      JSON.parse(response.body)
    end
  end
end
