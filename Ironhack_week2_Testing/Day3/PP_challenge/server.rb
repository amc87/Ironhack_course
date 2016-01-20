require 'sinatra'
require 'sinatra/reloader'
require "./lib/password_checker"

get "/" do
	erb :index
end

get "/:word" do
	@word = params[:word]
	erb :index
end

post "/login" do
	username = params[:username]
	password = params[:password]
	a = PasswordChecker.new(username,password)
	if a.all == true
		erb :congratulations
	else
		redirect "/"
	end
end