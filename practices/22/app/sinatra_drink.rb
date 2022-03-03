require "sinatra/base"

class DrinkApp < Sinatra::Application
  get "/drink" do
    ["カフェラテ", "モカ", "コーヒー"].sample
  end
end
