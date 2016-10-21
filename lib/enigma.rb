require "enigma/version"
require "enigma/config"
require "enigma/client"
require "enigma/apis/asset_api"
require "net/http"
require "json"

module Enigma
  def self.config
    @config ||= Config.new
  end

  def self.configure
    yield(config) if block_given?
  end
end
