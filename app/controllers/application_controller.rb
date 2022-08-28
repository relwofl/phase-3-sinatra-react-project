require 'pry'
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  ## cows 

  get '/cows' do
    cows = Cow.all
    cows.to_json
  end

  get '/cows/:id' do
  cow = Cow.find(params[:id])
  cow.to_json
  end

  ###delete cow



  ##farm fields

  get '/farm-fields' do
    farm_fields = FarmField.all
    farm_fields.to_json
  end

  get '/farm-field/:id' do
    farm_field = FarmField.find(params[:id])
    farm_field.to_json(include: :cows)
    end
end
