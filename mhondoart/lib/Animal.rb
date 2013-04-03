class Animal
	attr_accessor :pet_name, :zoo_keeper
	def initialize (name, zoo)
		@pet_name = name
		@zoo_keeper = zoo
	end
	def get_info
		puts "#{pet_name}"+" is in the care of "+ "#{zoo_keeper}"
	end
end
