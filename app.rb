require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "hello"
end

get '/random-cat' do
  @name = ['Amigo', 'Misty', 'Almond'].sample
  erb :random_cat
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb :named_cat
end