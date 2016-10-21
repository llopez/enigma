module Enigma
  module AssetAPI
    def self.generate_address
      Client.post('oap/addrs')
    end

    def self.issue_asset(from, to, amount)
      Client.post("oap/issue", {
        from_private: from,
        to_address: to,
        amount: amount
      })
    end
  end
end
