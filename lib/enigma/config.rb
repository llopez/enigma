module Enigma
  class Config
    attr_accessor :api_key, :version, :currency, :network, :use_ssl

    def initialize
      @api_key = ""
      @version = "v1"
      @currency = "btc"
      @network = "main"
      @use_ssl = true
    end

    def base_url
      [
        "https://api.blockcypher.com",
        self.version,
        self.currency,
        self.network
      ].join("/")
    end
  end
end
