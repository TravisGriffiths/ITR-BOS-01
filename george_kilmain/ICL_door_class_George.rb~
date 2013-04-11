#!/Users/travisgriffiths/.rvm/rubies/ruby-1.9.3-p327/bin/ruby

################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise 4.2
#
################################################################################


# Build a class based on a natural language (English) specification:
# 
# Specification: We want a class to track what our doors do. Our doors can be
# opened and closed, as well as locked. We should be able to check a door to
# see what state it is in, is it open or shut or locked. Each door should also 
# have a name so we can tell them apart.

################################# Define Door ###################################


############# Make 2 doors, front door and back door ############################

# Output the names of the doors to show they are created and different

########################## Lock the back door ###################################

########################## Open the front door ##################################

################# Check if the front door is locked #############################

# Output the status to show the state

################  Check if the back door is locked ##############################

# Output the status to show the state

################  Check if the front door is open   #############################

# Output the status to show the state

################  Check if the back door is open   ##############################

# Output the status to show the state

########STUDENTS SOLUTION##############
# door class

class Door
	# gets the name of the door e.g. front door / back door
	def initialize(name)
		# displays message on instance 
		puts "The name of the door is #{name}"
	end

	# determines whether the door is locked 
	def set_door_lock(lock_state)
		@lock_state = lock_state
	end
	
	def get_door_lock
		@lock_state
		if @lock_state == "Lock"
			puts "The door is locked"
		else
			puts "The door is unlocked"
		end
	end
	
	# determines wheter the door is open or closed
	def set_door_state(state)
		@state = state
	end
	
	def get_door_state
		@state
		if @state == "Open"
			puts "The door is opened"
		else
			puts "The door is closed"
		end
	end
end

# instantiate front and back door
door1 = Door.new("Front Door")
door2 = Door.new("Back Door")

# lock the back door
door2.set_door_lock("Lock")

# open the front door
door1.set_door_state("Open")

#check if the front door is locked
puts "Is the front door locked?"
door1.get_door_lock

#check if the back door is locked
puts "Is the back door locked?"
door2.get_door_lock

# check if the front door is open
puts "Is the front door open"
door1.get_door_state

# check if the back door is open
puts "Is the back door open"
door2.get_door_state