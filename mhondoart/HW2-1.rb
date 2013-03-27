###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 02
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to test your knowledge of Variables and Conditionals which we
# learned in Lesson 02.
#
###############################################################################
#
# 1. Welcome users to your game. Let them know you are the creator. 
#
# 2. Ask the user for their name and store it in a variable.
#
# 3. Personally greet the player by printing to the screen, "Hi player_name! 
#	 Let them know they have 3 guesses to guess the Secret Number between 1 and 10.
#
# 4. Create a new Integer variables called `guesses_left`, this will count
#    down how many more times the Player can guess. It's initial value should
#    be 3.
#
# 5. Using String Interpolation, concatenate the variable `guesses_left`
#    into a String that tells the Player how many guesses they have left
#    and print it to the screen.
#
# 6. Create a new Integer variable called `secret_number` and set the value to
#    a number of your choosing between 1 and 10. This is the number that
#    our Player will try to guess.
#
# 7. Ask the Player to make their first guess. (Remember to cast input from the Player into the appropriate
#    data type).
#    
# 8.  Use a Conditional to find out if the Player has guessed the
#     correct number.
#
#     1. If they guessed correctly, tell them they won and exit the
#        script.
#	
#	  2. For an incorrect guess decrement the variable `guesses_left` by 1 and
#     print to the screen how many guesses the Player has left.
#
#     		1. If they guessed a number too low, tell them that they need to
#        	   guess higher on their next guess.
#
#     		2. If they guessed a number too high, tell them that they need to
#        	   guess lower on their next guess.
#		
# 9. Repeat the above process for a total of 3 times asking the Player
#     to make a guess and verify if the Player won.
#
# 10. If they do not make the correct guess after 3 tries, print that
#     the Player loses and what the `secret_number` was.
#
# 11. Make sure to add helpful comments to your code to document what
#     each section does.
#
###############################################################################
#
# Student's Solution
#
###############################################################################
#
# this is the second assignment in Ruby on Rails class
# let's introduce ourselves....
puts "Hello and Welcome to the Secret Number Game!"
first_name = "Maryann"
last_name = "Hondo"
puts "this game was created by " + first_name + " " + last_name + " "
#
# setting up the rules to play
#
puts %Q("to play any game, there are rules --says " #{first_name}"")
counter=3
puts "Rule 1: you will get 3 tries to guess a number between 1 and 10"
puts "before we play the game, I'd like to know your name-"
puts "What is your name?"
player_name= gets.chomp
#
#this is where we get the first number
#
current_guess = 0
#
#this is where we set the number of guesses
#
guesses_left= 3
#
#this is where we get our number
#
secret_number = rand (10)
#
# Let's get started!!!
#
print player_name + "- type a number between 1 & 10 and hit enter "
while  counter > 0
	current_guess = gets.to_i
	#
	#   this is where we compare the two
	#
	if (secret_number != current_guess) 
		guesses_left -= 1
		if (secret_number > current_guess) 
			if (guesses_left > 0) 
				puts "wrong number  #{player_name}, try a higher number you have #{guesses_left} more tries, try again!"
			else
				puts "sorry #(player_name} you have run out of tries!"
			end
		else 
			if (guesses_left > 0)
				puts "wrong number, try a lower number  #{player_name}, you have #{guesses_left} more tries,  try again!"
			else
				puts "sorry #{player_name} you have run out of tries!"
				counter = 0
			end
			counter -= 1
		end
	else 
		puts "you got it! the number was #{secret_number} "
		counter = 0
	end
end
puts "this is the end of our game, please come back and play again"
