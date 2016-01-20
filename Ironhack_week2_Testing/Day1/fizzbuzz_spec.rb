require "RSpec"
require "./fizzbuzz.rb"

RSpec.describe "fizzbuzz" do
	it "returns from 1 to 100" do
		result = FizzBuzz.new.fizzbuzz
		expect(result.length).to eq(100)
	end

	it "returns 'fizz' for 3" do
		result = FizzBuzz.new.fizzbuzz
		expect(result[2]).to eq("fizz")
	end
	it "returns 'buzz' for 5" do
		result = FizzBuzz.new.fizzbuzz
		expect(result[4]).to eq("buzz")
	end

	it "returns 'buzz' for 10" do
		result = FizzBuzz.new.fizzbuzz
		expect(result[9]).to eq("buzz")
	end

	it "returns 11 for 11" do
		result = FizzBuzz.new.fizzbuzz
		expect(result[10]).to eq(11)
	end

	it "returns 'fizzbuzz' for 15" do
		result = FizzBuzz.new.fizzbuzz
		expect(result[14]).to eq("fizzbuzz")
	end

	it "returns buzz for 25" do
		result = FizzBuzz.new.fizzbuzz
		expect(result[24]).to eq("buzz")
	end

	it "returns buzz for 30" do
		result = FizzBuzz.new.fizzbuzz
		expect(result[24]).to eq("buzz")
	end



end