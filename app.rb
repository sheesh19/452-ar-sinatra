require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require 'pry'

get "/" do
  # the data we want to display
  # the @ symbol makes it available to us in our view (i.e. the index for now!)
  @characters = Character.all
  # the file we want to display the data on
  erb :index
end

get "/characters/:id" do
  character_id = params[:id]
  @character = Character.find(character_id)

  # the file we want to display our character data on
  erb :show
end

post "/characters" do
  # WE CAN USE THIS

  # name = params[:name]
  # location = params[:location]
  # character_type = params[:character_type]
  # Character.create(name: name, location: location, character_type: character_type)
  # params = {"name"=>"Harry Potter", "character_type"=>"Gryffindor", "location"=>"Hogwarts"}
  # character = Character.new(params)
  # character.save
  
  # OR THIS, pending on if our form is built correctly

  Character.create(params)
  # basically an a tag: <a href="/"></a>
  redirect '/'
end
