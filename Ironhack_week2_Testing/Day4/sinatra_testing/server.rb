require "sinatra"
require "sinatra/reloader"
require "guard"

get "/" do
	"Hello World"
end

get "/real_page" do
	"This is  real page"
end

get "/hi" do
	"Hi"
	redirect "/real_page"
end