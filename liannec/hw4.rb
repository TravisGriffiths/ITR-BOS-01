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
# 3. Create a new method called `guesses_left` that calculates how many guesses out of 3 the Player has left. The method should take one parameter that is the  number of guesses the player has guessed so far.Use this new method in your code to tell the user how many guesses they have remaining. 
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

puts "\nWelcome  to the Secret Number Game. Created by Lianne Castellanos"
# Prompting user for name
puts "\nWhat is your name?"
name = gets.chomp
  puts "\nHi, #{name}. You have 3 tries to guess the secret nunmber! Its between 1 and 10"
# randomizes secret number
r=(1..10)
secret_number = rand(r)
# hash for messgages
messages = {:win => ["You've Won!"], :lose => ["Sorry, you've lost. The correct number was #{secret_number}"], :too_low => ["Your guess was too low."], :too_high => ["Your guess was too high"]} 

number_guesses = 3
def increment_guess_count(count)
	 return count += 1
end

def guesses_left(guess)
	 return  guess -=1
end
#  loop for guesses 

until number_guesses == 0
	puts "Make a guess!"
	your_guess = Integer(gets.chomp)

		if number_guesses > 0 
				if your_guess == secret_number	
					puts "#{messages[:win]}"
					puts "\nThanks for playing"
					exit
				elsif your_guess > secret_number
					puts "#{messages[:too_high]}" + "Guesses left #{guesses_left}" 
				else your_guess < secret_number
					puts "#{messages[:too_low]}" + "Guesses left #{guesses_left}"
				end #  loop
	guesses_left
		else
			puts "#{messages[:lose]}"
			
end
end #end loop
exit




