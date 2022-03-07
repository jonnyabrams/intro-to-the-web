require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "hello"
end

get '/random-cat' do
  @name = ['Amigo', 'Misty', 'Almond'].sample
  erb :index
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end