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


# increments the players guess by one
def increment_guess_count(num) 
	return num += 1
end

# decrements the players number of guesses
def guesses_left(guess_count)
	guesses_remaining = 3 - guess_count
	return guesses_remaining
end

#display generic welcome message
creator = "George Kilmain"
welcome_message = "Welcome to the secret Number Game. \nThis game was created by #{creator}."
puts welcome_message

#get player name and assign it to player_name to personalize welcome message
puts "Please enter your name below and press enter:"
player_name = gets.chomp.capitalize
puts "Welcome, #{player_name}!\n#{player_name}, you have 3 chances to guess the secret number.\nThe secret number is between 1-10"

# range of all of the possible secret numbers 1-10
set_of_number = (1..10)

#assign secret number to a random number from set_of_number 
secret_number = rand(set_of_number)

# for debuging
# puts secret_number

# hash of messages to display to the user after they guess a number
messages = {:win => "You won!", :lose => "You have lost. The correct number was #{secret_number}", :too_low => "The number you entered was too low!", :too_high => "The number you entered was too high!"}

# initialize guess_count parameter to 0
guess_count = 0

# decrements the players number of guesses
while guesses_left(guess_count) > 0

	# tell the user how many guesses they have left
	# if guess count is 0 do not show message
	puts "You have #{guesses_left(guess_count)} guesses left." if guess_count !=0
		
	# get player guess
	puts "Please make your guess:"
	# cast input to integer 
	player_guess = gets.chomp.to_i
	
	# increment the guess count using the incrememt_guess_count method
	guess_count = increment_guess_count(guess_count)

	# If the player guessed correctly
	if player_guess == secret_number
		# display the winning message
		puts messages[:win]
		# exit the loop
		exit
	end

	# If player guesses a number too high	
	if player_guess > secret_number
		# display too high message
		puts messages[:too_high]
	# If player guesses too low
	else player_guess < secret_number
		#display too low message
		puts messages[:too_low]
	end
		
	# If player had no more messages left 
	if guesses_left(guess_count) == 0
		# display lose message
		puts messages[:lose]
		# exit the loop
		exit
	end
end