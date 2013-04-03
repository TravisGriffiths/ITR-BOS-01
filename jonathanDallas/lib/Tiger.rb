require "./lib/Animal"

class Tiger < Animal
	def initialize(food_type,*animal_args)
		@food_type = food_type
		super(animal_args[0],animal_args[1])
	end

	def get_diet
		puts "A tiger should only eat #{@food_type}"
	end
end
