require 'rubygems'
require 'sinatra'
require 'json'
require 'twss'

TWSS.treshold = 2.0

get '/' do
  erb :index
end

post '/' do
  content_type :json
  {'sheSaidIt' => TWSS(params['q'])}.to_json
end



