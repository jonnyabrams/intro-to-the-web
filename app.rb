require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/secret' do
  "get slashy"
end

get '/bleg' do
  "get bleggy"
end

get '/cat' do
  erb :cat
end