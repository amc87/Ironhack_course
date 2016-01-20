require "sinatra"
require "sinatra/reloader"

list = []

get "/" do
	@list = list
	erb :form
end

get "/users/" do
	@list = list
	erb :users
end

get "/users/:username" do
	@username = params[:username]
	@list = list
	erb :users
end

get "/today/:hours_ago" do
	@time = Date.today
	@shopping_list = ["tomate", "patatas", "huevos", "macarrones"]
	@hours_ago = params[:hours_ago].to_i
	@hour = Time.new - @hours_ago * 3600
	erb :author
end

post "/username" do
	redirect "/users/#{params[:username]}"
end


post "/item" do
	list << params[:item]
	redirect "/users/#{params[:username]}"
end


