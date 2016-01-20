require "pry"

class PasswordChecker
	def initialize(username,password)
		@username = username
		@password = password
	end

	def more_than_7
		if @password.length >= 7
			true
		else
			false
		end
	end

	def contains_symbols
		if @password =~ /[a-zA-Z]/ && @password =~ /\d/ && @password =~ /[-!$%^&*()_+|~=`{}\[\]:";'<>?,.\/]/
			true
		else
			false
		end
	end

	def up_low
		if @password =~ /[a-z]/ && @password =~ /[A-Z]/
			true
		else
			false
		end
	end

	def no_username
		split_password = @username.split("@")
		binding.pry
		if @password.include?(split_password[0]) || @password.include?(split_password[1])
			false
		else
			true
		end
	end

	def all
		if more_than_7 == true && contains_symbols == true && up_low == true && no_username == true
			true
		else
			false
		end
	end
end