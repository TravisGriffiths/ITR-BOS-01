# The Animal class is the parent class and should contain the following:
# 	Instance Variables:
#		- pet_name
#		- zoo_keeper
#	Methods with the following signature:
#		-  initialize(string1, string2) - Initializes  the pet_name and zoo_keeper instance variables
#		- get_info - This method should print the pet_name and zoo_keeper instance variables
# 

# Animal Super class

class Animal
	
	def initialize(pet_name, zoo_keeper)
		@pet_name = pet_name
		@zoo_keeper = zoo_keeper
	end

	def get_info
		puts "Pet name: #{@pet_name}"
		puts "Zookeeper: #{@zoo_keeper}"
	end
end


# Cat

class Cat < Animal

	def initialize (pet_name, zoo_keeper, food_type)
		super(pet_name, zoo_keeper)
		@food_type = food_type
	end

	def get_diet
		puts "#{self.class} diet is #{@food_type}"
	end
end

class Tiger < Animal

	def initialize (pet_name, zoo_keeper, food_type)
		super(pet_name, zoo_keeper)
		@food_type = food_type
	end

	def get_diet
		puts "#{self.class} diet is #{@food_type}"
	end
end

