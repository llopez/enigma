require "enigma/version"
require "enigma/config"

module Enigma
  def self.config
    @@config
  end

  def self.configure
    @@config ||= Config.new
    yield(@@config) if block_given?
  end
end
