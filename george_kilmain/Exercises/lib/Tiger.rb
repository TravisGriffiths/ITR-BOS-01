# Tiger

class Tiger < Animal
	attr_accessor :food_type

	def initialize 
		@food_type = ""
	end

	def get_diet
		puts "#{@food_type}"
	end
end
