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
messages = Hash.new
messages[:win] = "Congrats! you have won"
messages[:lose] = "Sorry, you lose" 
messages[:too_low] = "Your guess was too low"
messages[:too_high] = "Your guess was too high"
#
# method increment_guess_count takes the count and increments it
#
def increment_guess_count(count)
	return ( count += 1)
end
#
# method guesses_left calculates how many guesses  out of 3 the player has left
#
def guesses_left(guesses)
	return ( guesses -= 1)
end
#
# this is the fourth assignment in Ruby on Rails class
# let's introduce ourselves....
puts "Hello and Welcome to the Secret Number Game!"
first_name = "Maryann"
last_name = "Hondo"
puts "this game was created by " + first_name + " " + last_name + " "
#
# setting up the rules to play
#
puts "Rule 1: you will get 3 tries to guess a number between 1 and 10"
puts "before we play the game, I'd like to know your name-"
puts "What is your name?"
player_name= gets.chomp
#
#this is where we get our number
#
set_of_numbers=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
secret_number_index = rand(9)
secret_number = set_of_numbers[secret_number_index]
puts "this is the number #{secret_number} "
#
# Let's get started!!!
#
print player_name + "- type a number between 1 & 10 and hit enter "
current_guess = gets.to_i
current_guesses= 3
counter=0
while (counter < 3) do 
	#
	#  first check that guess is in range
	#
	#
	if (set_of_numbers.include?(current_guess) )
		#
		#   this is where we compare the two
		#
		if (secret_number == current_guess) 
		#
		#	you guessed right  
		#
			puts "#{messages[:win]} #{secret_number}"
			counter = 3
		else 
			if ( secret_number > current_guess)
				#
				#  secret number is greater than guess
				#  check for guesses left 
				#
				if ( (current_guesses=guesses_left(current_guesses)) > 0) 
					puts "wrong number, #{player_name}, #{messages[:too_low]} you have #{current_guesses} more tries, try again!"
					current_guess = gets.to_i
					increment_guess_count(counter)
				else	
					puts "#{player_name},  #{messages[:lose]} the number was #{secret_number}"
					counter = 3
				end
			else
				#
				#  check for guesses left 
				#
				if ( (current_guesses=guesses_left(current_guesses)) > 0) 
					puts "wrong number, #{player_name}, #{messages[:too_high]} you have #{current_guesses} more tries,  try again!"
					current_guess = gets.to_i
					increment_guess_count(counter)
				else
					puts "#{player_name},  #{messages[:lose]} the number was #{secret_number}"
					counter = 3
				end
			end
		end
	else 
			puts "#{current_guess} is invalid you have no more guesses"
			counter = 3
	end
end
