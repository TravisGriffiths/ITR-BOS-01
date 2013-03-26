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
#   Let them know they have 3 guesses to guess the Secret Number between 1 and 10.
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


###############################################################################
#
# Stretch Exercises: These are not required but are to challenge you.
#
###############################################################################
#
# 1. Take a look at: http://simpleror.wordpress.com/2009/03/15/q-q-w-w-x-r-s/
#    Use the %Q and %q operator in your solution
#
# 2. Modify your solution to use nested conditionals
# 
# 3. Modify your solution to use a compound conditional
#
# 4. Toggle all of your if to unless and vice versa
#
# 5. Modify the input to deal with nonsensical input i.e. 'jello'
###############################################################################



puts "\nWelcome  to the Secret Number Game. Created by Lianne Castellanos"
puts "\nWhat is your name?"
name = gets.chomp
puts "\nHi, #{name}. You have 3 tries to guess the secret nunmber! Its between 1 and 10"
guesses_left=3
puts "\nYou have #{guesses_left} guess left!"
secret_number=8

puts "\nMake your first guess!"
your_guess = Integer(gets.chomp)
	if your_guess == secret_number	
		puts "\nYou Win"
		exit("Thanks for playing")	
	elseif your_guess > secret_number
		guesses_left-=1
		puts "\nPlease guess lower. Guesses left: #{guesses_left}" 
	else your_guess < secret_number
		guesses_left-=1
		puts "\nPlease guess higher. Guesses left: #{guesses_left}"
end

puts "\nMake your second guess!"
your_guess = Integer(gets.chomp)
	if your_guess == secret_number	
		puts "\nYou Win"
		exit("Thanks for playing")	
	elseif your_guess > secret_number
		guesses_left-=1
		puts "\nPlease guess lower. Guesses left: #{guesses_left}" 
	else your_guess < secret_number
		guesses_left-=1
		puts "\nPlease guess higher. Guesses left: #{guesses_left}"
end
puts "\nMake your third guess!"
your_guess = Integer(gets.chomp)
	if your_guess == secret_number
		puts "\nYou Win"
		exit("Thanks for playing")	
	elseif your_guess > secret_number
		guesses_left-=1
		puts "\nPlease guess lower. Guesses left: #{guesses_left}" 
	else your_guess < secret_number
		guesses_left-=1
		puts "\nPlease guess higher. Guesses left: #{guesses_left}"
end
if guesses_left == 0
	abort("You lose")
end
