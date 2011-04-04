require 'rubygems'
require 'sinatra'
require 'json'
require 'twss'

TWSS.threshold = 3.0

get '/' do
  erb :index
end

post '/' do
  content_type :json
  q = params['q']
  ans = TWSS(q)
  puts "TWSS: #{ans.to_s}\t#{q}"
  {'sheSaidIt' => ans}.to_json
end



