###############################################################################
#
# Introduction to Ruby on Rails
#
# Homework 03
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to help you better understand Arrays, Hashes and Loops that we
# learned in Lesson 03.
#
###############################################################################
#
# 1. Review your solution to Lab 02. Copy and Paste your solution to
#    this file.
#
# 2. Create a new Array variable called `set_of_numbers`, this will be
#    a range between 1 - 10 that our Player will guess from. Each value
#    in the Array should be an integer.
#	
# 3. Change the variable `secret_number` (HW_02) so that instead of a hard-coded
#    Integer, it randomly chooses one of the options from `set_of_numbers`
#    ('secret_number' is the integer our Player will try to guess).
#
#      Hint: Look up Array#sample in the Ruby documentation.
#
# 4. Create a new Hash variable called `messages`. In this Hash will be
#    four Keys Value pairs:
#
#    1. :win - A String telling the Player that they have won.
#
#    2. :lose - A String telling the Player that they have lost and what
#       the correct number was.
#
#    3. :too_low - A String telling the Player that their guess was too
#       low.
#
#    4. :too_high - A String telling the Player that their guess was too
#       high.
#
# 5. Change the behavior of your program, so instead of hard coding, use the principles of DRY(don't repeat yourself). 
#    This means using a Loop to iterate over your code either until the Player has guessed the
#    correct number, or they have tried to guess 3 times.
#
# 6. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
#Put your solution below this line.
#
###############################################################################

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

#create counter variable
#player only gets 3 guesses
guesses_left = 3

while guesses_left > 0

	#get player guess
	puts "Please make your guess:"
	#cast input to integer 
	player_guess = gets.chomp.to_i

	# If the player guessed correctly
	if player_guess == secret_number
		puts messages[:win]
		# exit the program
		exit

	# If player guessed a number too high	
	elsif player_guess > secret_number
		puts messages[:too_high]
		guesses_left -= 1
		puts "You have #{guesses_left} guesses left."
	
	# If player guesses too low
	elsif player_guess < secret_number
		puts messages[:too_low]
		guesses_left -= 1
		puts "You have #{guesses_left} guesses left."
	end
	
	# If player had no more messages left 
	if guesses_left == 0
	puts messages[:lose]
	end
end