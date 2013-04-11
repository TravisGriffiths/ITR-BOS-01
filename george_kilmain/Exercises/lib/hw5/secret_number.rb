class SecretNumber
#   *** NOTE ***  
#	Make sure that all the instance variables in this class may only be READ and not WRITTEN to. 
#  		(hint: Review ruby documentation for attr_reader).

	# attr variables 
	attr_read :set_of_numbers, :secret_number, 


	# Initializes the available range of numbers the Player can guess. (e.g. guess a number between 1 and 20).
	# 	(You should default the range of numbers to 1 - 10 if parameter is null.)
	# Initializes the secret number
	def initialize(set_of_numbers=(1..10))

		# dont use if statement here because we're requiring 1 arg and if none is supplied we'll never get to the if statement
		# set value in arg like above 
		#if 	@set_of_numbers == ""
			#@set_of_numbers == [1..10]
		#else
			#@set_of_numbers = set_of_numbers
		#end
		#private method which generates the secret number
		generate_secret_number(set_of_numbers)
	end

	#  Randomly generates a number from the range of numbers. Guessing this number wins the game.
	#  Look up "private methods" in the ruby docs.
	private 
	def generate_secret_number(range_of_numbers)
		@secret_number = rand(range_of_numbers)
  	end
end

