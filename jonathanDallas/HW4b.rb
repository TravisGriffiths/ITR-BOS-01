###############################################################################
#  Stretch Exercise:  Complete the ICL_door_class.rb exercise in 
#  Exercises/Objects_and_Methods folder, reproduced here
#
#  NOTE: Use the internet, public APIs and the functions_vs_methods.rb 
#  examples in the Exercises/Objects_and_Methods folder to help you 
###############################################################################

# Build a class based on a natural language (English) specification:
# 
# Specification: We have want a ruby application to track our doors, see how
# how often we go in and out and if our house is secure, etc. To to this 
# we want a class to track what our doors do. Our doors can be opened and 
# closed, as well as locked. We should be able to check a door to see what 
# state it is in, is it open or shut or locked. Each door should also have a 
# name so we can tell them apart.
#
# The purpose of this exercise is to stretch your abilities, and get you to 
# think about everyday things in terms of classes and methods. Your projects
# now and later will start out as natural language specifications that you 
# will want to turn into code. This is a simple case.
#  
################################# Define Door ###################################

class Door
	attr_accessor :name
	attr_accessor :locked
	attr_accessor :opened
	attr_accessor :closed
	attr_accessor :status

	def initialize(name)
		@name = name
		@opened = true
		@closed = false
		@locked = false
	end
	def lock
		@opened = false
		@closed = true
		@locked = true
	end
	def unlock
		@opened = false
		@closed = true
		@locked = false
	end
	def open
		@opened = true
		@closed = false
		@locked = false
	end
	def close
		@opened = false
		@closed = true
		@locked = false
	end
	def state
		if locked
			@status = "locked"
		elsif closed
			@status = "closed"
		else
			@status = "open"
		end
		@status = "The #{@name} is #{@status}"
	end
end




############# Make 2 doors, front door and back door ############################

# Output the names of the doors to show they are created and different

########################## Lock the back door ###################################

back_door = Door.new("Back Door")
back_door.lock

puts back_door.state

########################## Open the front door ##################################

front_door = Door.new("Front Door")
front_door.open

puts front_door.state

################# Check if the front door is locked #############################

# Output the status to show the state

if front_door.locked
	puts "The front door is locked"
else
	puts "The front door is not locked"
end

################  Check if the back door is locked ##############################

# Output the status to show the state
if back_door.locked
	puts "The back door is locked"
else
	puts "The back door is not locked"
end
################  Check if the front door is open   #############################

# Output the status to show the state
if front_door.opened
	puts "The front door is open"
else
	puts "The front door is not open"
end
################  Check if the back door is open   ##############################
if front_door.opened
	puts "The back door is open"
else
	puts "The back door is not open"
end