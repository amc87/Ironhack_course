require "rspec"

require "../lib/password_checker"

describe PasswordChecker do
	before do
		@password_checker = PasswordChecker.new("hi@google.com","Hellohello1*")
	end

	describe "#more_than_7" do
		it "should check the length or password >= 7" do
			expect(@password_checker.more_than_7).to eq(true)
		end
	end

	describe "#contains_symbols" do
		it "should check the password contains at least 1 letter, 1 number and 1 symbol" do
			expect(@password_checker.contains_symbols).to eq(true)
		end
	end

	describe "#up_low" do
		it "should check the password contains at least 1 uppercase and 1 lowercase" do
			expect(@password_checker.up_low).to eq(true)
		end
	end

	describe "#no_username" do
		it "should check the password does not match the username or domain name" do
			expect(@password_checker.no_username).to eq(true)
		end
	end
end