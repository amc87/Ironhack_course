##### RSpec:

class StringCalculator

	def add(numbers)
		total = 0

		numbers.split(",").each do |number|

			total += number.to_i

		end
		total
	end

end