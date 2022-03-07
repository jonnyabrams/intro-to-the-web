require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "hello"
end

get '/name-that-cat' do
  erb :name_that_cat
end

get '/random-cat' do
  @name = ['Amigo', 'Misty', 'Almond'].sample
  erb :random_cat
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :named_cat
end