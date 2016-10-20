require 'test_helper'

class EnigmaTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Enigma::VERSION
  end

  def test_configure
    Enigma.configure do |config|
      config.api_key = "APIKEY"
      config.version = "v2"
      config.currency = "bcy"
      config.network = "test"
    end
    
    assert_equal "APIKEY", Enigma.config.api_key
    assert_equal "v2", Enigma.config.version
    assert_equal "bcy", Enigma.config.currency
    assert_equal "test", Enigma.config.network
  end
end
