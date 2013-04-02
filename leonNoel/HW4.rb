###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 04
#
# Purpose:
#
# Read the steps below and complete the exercises in this file. This Lab
# will help you to review the basics of Object-Oriented Programming that
# we learned in Lesson 04.
#
###############################################################################
#
# 1. Review your solution to Lab 03. Copy and Paste your solution to
#    this file.
#
# 2. Create a new method called `increment_guess_count` that takes
#    an integer parameter and increments it by 1.
#
# 3. Create a new method called `guesses_left` that calculates how many guesses 
#	 out of 3 the Player has left. The method should take one parameter that is the 
#	 number of guesses the player has guessed so far. Use this new method in your 
#	 code to tell the user how many guesses they have remaining. 
#
# 4. Make sure to remove your local variable `guesses_left` and use the
#    new method instead.
#
# 5. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
# Student's Solution
#
###############################################################################

#1
set_of_numbers = [1,2,3,4,5,6,7,8,9,10]

secret_number = set_of_numbers.sample

messages = {:win => "You have won! ", :lose => "You lost. The correct number was #{secret_number} ", :too_low => "Your quess was too low ", :too_high => "Your guess was too high "}

count = 3 #count for my loop

def increment_guess_count (a)
	increment_count = a
	increment_count-=1
	return	increment_count
end

def guesses_left (b)	
	number = b
	final = number += 1
	return final
end

while (count > 0)
	
	puts "Make your guess. You have #{guesses_left(increment_guess_count(count))} left. "
	guess = $stdin.gets.chomp.to_i
	if (guess == secret_number)
		puts messages[:win]
		exit
	elsif (guess < secret_number)
		puts messages[:too_low]
	elsif (guess > secret_number)
		puts messages[:too_high]
	end
	count-=1
end #while end
puts "Sorry you lose!"
exit

#2





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