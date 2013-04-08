module RandomArrayValueFromHash

	def self.pick_random_value(responses)
		type = responses.keys.sample
		responses[type].sample
	end


end