require 'rack/test'
require 'webmock/rspec'
include Rack::Test::Methods

describe "練習問題10" do
  # sinatra を使っておみくじを引くWebアプリを作ってください。
  # 出てくるのは、大吉、中吉、末吉、凶とします。
  describe "問1" do
    require_relative '../app/omikuji'
    let(:app) {
      OmikujiApp
    }
    example do
      get '/'
      expect(last_response.status).to eq 200
      expect(last_response.body).to match /^(大吉|中吉|末吉|凶)$/
    end
  end

  # P.244で書いた sinatra_hi.rb へHTTPアクセスするプログラムを書いてください。
  describe "問2" do
    require_relative '../app/sinatra_hi'
    before do
      WebMock::API.stub_request(:get, "http://localhost:4567/hi").
        with(headers: {'Accept'=>'*/*'}).to_rack(HiApp)
    end
    example do
      response = Net::HTTP.get(URI.parse("http://localhost:4567/hi"))
      expect(response).to eq "hi!"
    end
  end

  # P.246で書いた sinatra_drink.rb へHTTPアクセスするプログラムを書いてください。
  describe "問2" do
    require_relative '../app/sinatra_drink'
    before do
      WebMock::API.stub_request(:get, "http://localhost:4567/drink").
        with(headers: {'Accept'=>'*/*'}).to_rack(DrinkApp)
    end
    example do
      response = Net::HTTP.get(URI.parse("http://localhost:4567/drink"))
      expect(response).to match /^(カフェラテ|モカ|コーヒー)$/
    end
  end
end
