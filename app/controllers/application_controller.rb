class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/cows' do
    cows = Cow.all.order(:name).limit(10)
    cows.to_json
  end
end
