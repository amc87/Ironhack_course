class Calculator
	def initialize(number1, number2, operation)
		@number1 = number1
		@number2 = number2
		@operation = operation
	end

	def calculate
		@number1.send(@operation,@number2)
	end
end

class Writing

	def initialize(result)
		@result = result
	end

	def write
		IO.write("./public/text.txt", @result)
	end

end

class Reading
	def initialize
		
		
	end
end
