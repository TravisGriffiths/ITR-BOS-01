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
class Door

#
#alternative
# attr_accessor :name, :closed, :locked
# def initialize (name)
#    @name = name
#    @closed = false
#    @locked = false
# end
# def is_locked?
#    @locked
# end
# d1 = Door.new()
# d1.name='front'
# if (d1.locked)
#

	def initialize (name)
		@name=name
		@locked=false
		@opened=true
	end
	def lock
		@lock= true
	end
	def unlock
		@lock = false
	end
	def open
		@opened= true
	end
	
end

 Make 2 doors, front door and back door ############################

# Output the names of the doors to show they are created and different

FrontDoor=Door.new('Front');
BackDoor=Door.new('Back');

########################## Lock the back door ###################################
BackDoor.lock

########################## Open the front door ##################################
FrontDoor.open

################# Check if the front door is locked #############################
if (FrontDoor.lock == true)
puts "Front door locked"
end
# Output the status to show the state

################  Check if the back door is locked ##############################

if (BackDoor.lock == true)
puts "Back door locked"
end
# Output the status to show the state

################  Check if the front door is open   #############################

# Output the status to show the state

################  Check if the back door is open   ##############################

# Output the status to show the state
