require "sinatra"
require "sinatra/reloader"
require "guard"
require "pry"
require "imdb"

require "./models/word"
require "./models/answer"

enable :sessions

new_search = Word.new






get "/" do
	@name = session[:name]
	# binding.pry
	erb :form
end

post "/nombre/:name" do
	session[:name] = params[:name]
	redirect "/"
end

post "/search" do
	@new_search = new_search
	search = @new_search.searching(params[:word])
	@first_9 = @new_search.display_9
	
	@array = new_search.displayed_movies
	@year = @array[rand(0..8)].year
	erb :game
end

post "/answer" do
	right_answer = params[:real_answer]
	players_answer = params[:players_answer]
	decision = Answer.new(right_answer,players_answer)
	@veredict = decision.comparing
end

