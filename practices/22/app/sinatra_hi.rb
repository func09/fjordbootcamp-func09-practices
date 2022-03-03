require "sinatra/base"

class HiApp < Sinatra::Application
  get '/hi' do
    "hi!"
  end
end
