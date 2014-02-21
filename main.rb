require 'rubygems'
require 'sinatra'
require 'sinatra/contrib/all'

set :sessions, true

get '/home' do
	"Welcome home. It sure has been a while, hasn\'t it? Is this working?"
end


get '/inline' do
	"Hi, directly from the action!"
end

get '/template' do 
	erb :mytemplate
end

get '/nested_template' do
	erb :"/users/profile"
end

get '/nothere' do
	redirect '/inline'
end

get '/form' do
	erb :form
end

post '/myaction' do
	params['username']
end
