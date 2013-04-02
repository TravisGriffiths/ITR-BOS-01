class Animal
	def initialize (pet_name,zoo_keeper)
		@pet_name = pet_name
		@zoo_keeper = zoo_keeper
	end

	def get_info
		puts "#{@pet_name} is taken care of by #{@zoo_keeper}"
	end
end
