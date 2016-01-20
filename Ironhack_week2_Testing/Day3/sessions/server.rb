require 'sinatra'
require 'sinatra/reloader'

set :port, 8000
enable :sessions

get "/" do
    @text = session[:data]
    erb :index    
end

get "/session-data" do
    @text = session[:data]
    erb :index
end

get "/:text" do
    session[:data] = params[:text]
    redirect "/"
end