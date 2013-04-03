class Tiger < Animal
	attr_accessor :food_type
	def initialize (food, name, zoo)
		@food_type = food
		super(name, zoo)
	end
	def get_diet
		puts "tiger diet is " +  "#{food_type}"	
	end
end
