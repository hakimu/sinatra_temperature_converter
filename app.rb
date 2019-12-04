require 'json'
require 'unicorn'
require 'sinatra'
require 'newrelic_rpm'

get '/' do
  erb :home
end

post '/' do
  @degrees = params[:degrees]
  @celsius = farenheit_to_celsius @degrees.to_i
  erb :convert
end

def farenheit_to_celsius(degrees)
  (degrees - 32) * 5 / 9
end
