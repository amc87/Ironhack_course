require "sinatra"
require "sinatra/reloader"
require "pry"

require "./lib/Calculator.rb"

get "/" do
	erb(:home)
end

get "/add" do
  erb(:add)
end


post "/operate" do
	
	# binding.pry
	number1 = params[:number1].to_f
	number2 = params[:number2].to_f
	operation = params[:operation].to_sym
	@result = Calculator.new(number1, number2, operation)
	# binding.pry
	@result_calc = @result.calculate
	
	
	erb :home
end

post "/save" do
	saver = params[:saver]
	@written_result = Writing.new(saver).write
	@read = IO.read("./public/text.txt")
	erb :home

end