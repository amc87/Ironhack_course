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

post "/calculate_add" do
	number1 = params[:number1].to_f
	number2 = params[:number2].to_f
	result = Calculator.new(number1, number2).add
	"The addition of #{number1} + #{number2} is equal to #{result}"
end

post "/calculate_substraction" do
	number1 = params[:number1].to_f
	number2 = params[:number2].to_f
	result = Calculator.new(number1, number2).substract
	"The substraction of #{number1} - #{number2} is equal to #{result}"
end

post "/calculate_multiplication" do
	number1 = params[:number1].to_f
	number2 = params[:number2].to_f
	result = Calculator.new(number1, number2).multiply
	"The multiplication of #{number1} * #{number2} is equal to #{result}"
end
post "/calculate_division" do
	number1 = params[:number1].to_f
	number2 = params[:number2].to_f
	result = Calculator.new(number1, number2).divide
	"The division of #{number1} / #{number2} is equal to #{result}"
end
