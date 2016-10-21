module Enigma
  module Client
    def self.post(endpoint_path, params = {})
      uri = URI([Enigma.config.base_url, endpoint_path].join("/"))
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = Enigma.config.use_ssl
      request = Net::HTTP::Post.new(uri.request_uri)
      request.content_type = "application/x-www-form-urlencoded"
      response = http.request(request)

      JSON.parse(response.body)
    end
  end
end
