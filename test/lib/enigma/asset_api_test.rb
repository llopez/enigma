
require 'test_helper'

class AssetAPITest < Minitest::Test
  def setup
    stub_request(:post, "https://api.blockcypher.com/v1/bcy/test/oap/addrs?token=TEST-API-TOKEN").
      to_return(:status => 200, :body => File.read(File.expand_path("oap-addrs.json", "test/data")), :headers => {})

    stub_request(:post, "https://api.blockcypher.com/v1/bcy/test/oap/issue?token=TEST-API-TOKEN").
      to_return(:status => 200, :body => File.read(File.expand_path("oap-issue.json", "test/data")), :headers => {})

    Enigma.configure do |c|
      c.api_key = "TEST-API-TOKEN"
      c.network = "test"
      c.currency = "bcy"
      c.version = "v1"
    end
  end

  def test_generate_address
    res = Enigma::AssetAPI.generate_address
    assert_equal({
      "private"=>"6ebe9bd472c8817ca4af9bfcc646a04b768bb7f643513dcc64bd006b031c1d7f",
      "public"=>"029c97d4a6f7c0b5a7895469c11cbb746c3955b4a0072d4420a85f5d3857c9fcf2",
      "oap_address"=>"1Bx8HeZyWGqwiZTSwb58Kn3Jb15L29n69aF",
      "original_address"=>"Bx8HeZyWGqwiZTSwb58Kn3Jb15L2Anp7to",
      "wif"=>"Bs3Ja2kCHdbUdWTYq256RcGMBfXJ6PaciHxWbEnWAeGxQKup6th3"
    }, res)
  end

  def test_issue_asset
    res = Enigma::AssetAPI.issue_asset("", "", 1000)
    assert_equal({
      "ver"=>1,
      "assetid"=>"1Npqwstp55vgThp4pwAC9UhYkvPJ28b2Ui",
      "hash"=>"56253cffa1b3508d106391da3646cda2aee0bd080db427321c77ad11739e4239",
      "received"=>"2015-10-25T05:41:45.092075094Z",
      "double_spend"=>false,
      "oap_meta"=>"1a2b3c4d5e6f",
      "inputs"=>[],
      "outputs"=>[{"address"=>"1ByJUiocpifLPaYVTALpA7JYa9DxpGxXKKP", "value"=>1000, "original_output_index"=>0}]
    }, res)
  end
end
