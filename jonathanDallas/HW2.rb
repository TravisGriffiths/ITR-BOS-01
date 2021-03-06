#!C:/RailsInstaller/Ruby-1.9.3-p327/bin/ruby

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

puts "\nWelcome to the Secret Number Game!"
puts "\nHey Bob, who's our first player?"
print "name: "
# get the players name
name = gets.chomp
# greet the player
puts "\nHi #{name}, welcome to the game"
# set the number of guess allowed
guesses_allowed = 3
# create a random number from 1 to 10
number = rand(1..10)

puts "\nIn #{guesses_allowed} tries can you figure out the number, between 1 and 10 that I'm thinking of?"

for i in 1..guesses_allowed
	print "guess #{i}:"

	# get the number entered from the user
	guess = gets.chomp.to_i

	# if the user's number matches the random number
	if number == guess
		# tell them they guessed correctly
		puts "\nCongratulation #{name} you just won a sense of accomplishment"
		success=true
		break;
	elsif number < guess
		# otherwise tell them what the number was supposed to be
		puts "\nToo High"
	elsif number > guess
		# otherwise tell them what the number was supposed to be
		puts "\nToo Low"
	end
end

puts "sorry the number was #{number}" if(!success)

