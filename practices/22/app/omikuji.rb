require "sinatra/base"

class OmikujiApp < Sinatra::Application
  get "/" do
    ['大吉', '中吉', '末吉','凶'].sample
  end
end



