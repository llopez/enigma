require 'test_helper'

class EnigmaTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Enigma::VERSION
  end

  def test_configure
    Enigma.configure do |config|
      config.api_key = "APIKEY"
    end
    assert_equal "APIKEY", Enigma.config.api_key
  end
end
