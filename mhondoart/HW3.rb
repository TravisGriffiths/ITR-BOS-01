#############################################################################
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

################################################################################
messages = Hash.new
messages[:win] = "Congrats! you have won.inspec"
messages[:lose] = "Sorry, you lose" 
messages[:too_low] = "Your guess was too low"
messages[:too_high] = "Your guess was too high"
#
# this is the third assignment in Ruby on Rails class
# let's introduce ourselves....
puts "Hello and Welcome to the Secret Number Game!"
first_name = "Maryann"
last_name = "Hondo"
puts "this game was created by " + first_name + " " + last_name + " "
#
# setting up the rules to play
#
counter=3
puts "Rule 1: you will get 3 tries to guess a number between 1 and 10"
puts "before we play the game, I'd like to know your name-"
puts "What is your name?"
player_name= gets.chomp
#
#this is where we set the number of guesses
#
guesses_left= 3
#
#this is where we get our number
#
set_of_numbers=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
secret_number_index = rand(10)
secret_number = set_of_numbers[secret_number_index]
#
# Let's get started!!!
#
print player_name + "- type a number between 1 & 10 and hit enter "
current_guess = gets.to_i
until (counter == 0) do 
	#
	#   this is where we compare the two
	#
	if (secret_number != current_guess) 
		guesses_left -= 1
		if (secret_number > current_guess) 
			if (guesses_left > 0) 
				puts "wrong number, #{player_name}, #{messages[:too_high]} you have #{guesses_left} more tries, try again!"
				current_guess = gets.to_i
				counter -= 1
			else
				puts "sorry #{player_name} you have run out of tries!"
				counter = 0
				puts "this is the end of our game, please come back and play again"
			end
		else 
			if (guesses_left > 0)
				puts "wrong number, #{player_name}, #{messages[:too_low]} you have #{guesses_left} more tries,  try again!"
				current_guess = gets.to_i
				counter -= 1
			else
				puts "#{player_name},  #{messages[:lose]}"
				counter = 0
				puts "this is the end of our game, please come back and play again"
			end
		end
	else 
		puts "#{messages[:win]}"
		counter = 0
	end
end


