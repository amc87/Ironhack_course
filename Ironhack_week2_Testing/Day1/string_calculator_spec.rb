require "RSpec"
require "./class.rb"

RSpec.describe "#add" do 
	it "returns 0 when empty string given" do
		result = StringCalculator.new.add("")
		expect(result).to eq(0)
	end

	it "returns 0 when empty string given" do
		result = StringCalculator.new.add("5")
		expect(result).to eq(5)
	end

	it "returns 0 when empty string given" do
		result = StringCalculator.new.add("2,4")
		expect(result).to eq(6)
	end

end