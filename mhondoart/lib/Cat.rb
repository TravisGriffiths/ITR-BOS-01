class Cat < Animal
	attr_accessor :food_type
	def initialize(food, *args)
		@food_type = food
		super(args[0],args[1])
	end
	def get_diet
		puts "cat diet is " "#{@food_type}"	
	end
end
