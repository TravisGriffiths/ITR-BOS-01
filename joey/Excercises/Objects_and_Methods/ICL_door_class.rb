#!/Users/jparshley/.rvm/rubies/ruby-1.9.3-p392/bin/ruby

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

################################# Define Door ##################################

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

class Door
  def initialize(name,is_locked,is_open)
    @name = name
    @is_locked = is_locked
    @is_open = is_open
  end
  def lock_door
    @is_locked = 'locked'
  end
  def open_door
    @is_open = 'open'
  end
  def display
    puts "I am the #{@name} door and my lock is #{@is_locked} and I am #{@is_open}"
  end
end

front_door = Door.new('Frontdoor','unlocked','closed')
back_door = Door.new('Backdoor','unlocked','closed')
back_door.lock_door
front_door.open_door
puts
front_door.display
puts
back_door.display



