require "pry"

class FizzBuzz
	def fizzbuzz
		array = (1..100).to_a
		mapping = array.map{|x|

			if x % 15 == 0
				x = "fizzbuzz"
			elsif x % 3 == 0
				x = "fizz"
			elsif x % 5 == 0
				x = "buzz"
			else 
				x
			end
		}

		mapping

	end
end

FizzBuzz.new.fizzbuzz