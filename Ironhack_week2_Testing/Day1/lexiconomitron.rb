class Lexiconomitron
	def eat_t(string)
		result = string.tr('t','')
		result
	end

	def shazam(array_of_words)
		result = []
		result.push(array_of_words.first.reverse)
		result.push(array_of_words.last.reverse)
		result
	end

	def oompa_loompa(array_of_words)
		array_of_words.delete_if {|word| word.length > 3}
	end

	def all(array_of_words)
		result = shazam(array_of_words)
		result = oompa_loompa(result)
		eat_t(result.join(","))
	end
end

x = Lexiconomitron.new.all(["tla","que","tal","chorizo","Charlie","Álvaro", "tue"])

print x