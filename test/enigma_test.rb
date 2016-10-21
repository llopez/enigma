require 'test_helper'

class EnigmaTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Enigma::VERSION
  end

  def test_configure
    Enigma.configure do |config|
      config.api_key = "APIKEY"
      config.version = "VERSION"
      config.currency = "CURRENCY"
      config.network = "NETWORK"
    end

    assert_equal "APIKEY", Enigma.config.api_key
    assert_equal "VERSION", Enigma.config.version
    assert_equal "CURRENCY", Enigma.config.currency
    assert_equal "NETWORK", Enigma.config.network
    assert_equal true, Enigma.config.use_ssl
  end
end
