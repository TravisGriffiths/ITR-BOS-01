#!/Users/travisgriffiths/.rvm/rubies/ruby-1.9.3-p327/bin/ruby

# Create 3 classes (Animal, Cat, and Tiger) in separate files.
# The Animal class is the parent class and should contain the following:
# 	Instance Variables:
#		- pet_name
#		- zoo_keeper
#	Methods with the following signature:
#		-  initialize(string1, string2) - Initializes  the pet_name and zoo_keeper instance variables
#		- get_info - This method should print the pet_name and zoo_keeper instance variables
# The Tiger and Cat classes inherit from Animal and contain the following: 
#	Instance variables: 
#		- food_type
#	Method with the following signature:
#		- initialize(string1, string2) - Initializes the food_type instance variable to a string that is the type of food the animal eats AND uses the super keyword to initialize #the pet_name and zoo_keeper variables which are passed in as arguments. 
#		- get_diet  - Prints out the appropriate animal's (cat or tiger's) diet using the value of the  food_type instance variable. 


class Animal 

	def initialize(pet_name, zoo_keeper)
		@pet_name = pet_name
		@zoo_keeper = zoo_keeper
	end

	def get_info
		puts "Pet Name is: #{@pet_name}\nZookeeper is: #{@zoo_keeper}"
	end
end

class Cat < Animal

	def initialize(pet_name, zoo_keeper, food_type)
		super(pet_name, zoo_keeper)
		@food_type = food_type
	end

	def get_diet
		puts "#{self.class} diet is: #{@food_type}"
	end
end

class Tiger < Animal

	def initialize(pet_name, zoo_keeper, food_type)
		super(pet_name, zoo_keeper)
		@food_type = food_type
	end

	def get_diet
		puts "#{self.class} diet is: #{@food_type}"
	end
end

