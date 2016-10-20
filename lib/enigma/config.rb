module Enigma
  class Config
    attr_accessor :api_key, :version, :currency, :network

    def initialize
      @api_key = ""
      @version = "v1"
      @currency = "btc"
      @network = "main"
    end
  end
end
