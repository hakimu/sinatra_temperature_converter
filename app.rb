require 'json'
require 'unicorn'
require 'sinatra'
require 'newrelic_rpm'

get '/' do
	erb :home
end

post '/' do
	@degrees = params[:degrees]
	"#{@degrees} farenheit is #{farenheit_to_celsius @degrees.to_i} celsius"
end

def farenheit_to_celsius(degrees)
	(degrees-32)*5/9
end

