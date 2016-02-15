class Answer

	def initialize(right_answer, players_answer)
		@right_answer = right_answer
		@players_answer = players_answer
	end

	def comparing
		if @right_answer == @players_answer
			"Right"
		else
			"Wrong"
		end
	end

end