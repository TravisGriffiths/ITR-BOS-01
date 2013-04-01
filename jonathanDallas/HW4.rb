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

# increment the number of guesses made
def increment_guess_count(value)
	value += 1
end

# return the number of guess left - counting down from 3
def guesses_left(num_guesses)
	3 - num_guesses
end

puts "\nWelcome to the Secret Number Game!"
puts "\nHey Bob, who's our first player?"
print "name: "
# get the players name
name = gets.chomp
# greet the player
puts "\nHi #{name}, welcome to the game"
# set the number of guess allowed
guesses_made = 0
# create a random number from 1 to 10
number = rand(1..10)

# create a list of messages to display base on guesses
messages = {
	winner: "\nCongratulation #{name} you just won a sense of accomplishment",
	loser: "sorry the number was #{number}",
	too_high: "\nToo High",
	too_low: "\nToo Low"
}

# prompt the user to start guessing
puts "\nIn 3 tries can you figure out the number, between 1 and 10 that I'm thinking of?"

# Ask the user for a guess at least three times
while(guesses_made < 3)
	# tell the user how many guesses has has left.
	print "guesses left #{guesses_left(guesses_made)}: "

	# get the number entered from the user
	guess = gets.chomp.to_i

	# record that a guess was made
	guesses_made = increment_guess_count(guesses_made)

	# if the user's number matches the random number
	if number == guess
		# tell them they guessed correctly
		puts messages[:winner]
		# record that he successfully guessed the answer
		success=true
		# stop asking for guesses
		break;
	elsif number < guess
		# if their guess is too high tell them
		puts messages[:too_high]
	elsif number > guess
		# if their guess is too low tell them
		puts messages[:too_low]
	end


end

if(!success)
	puts messages[:loser] 
end




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