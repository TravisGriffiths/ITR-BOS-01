class Player
	attr_writer :name
	
	#Initializes the name instance variable.
	def initialize(name = nil)
  	end

	def set_name(playername)
		@name = playername
	end

end
