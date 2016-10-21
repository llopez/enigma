module Enigma
  module AssetAPI
    def self.generate_address
      Client.post('oap/addrs')
    end
  end
end
