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


puts "\nWelcome  to the Secret Number Game. Created by Lianne Castellanos"
# Prompting user for name
puts "\nWhat is your name?"
name = gets.chomp
puts "\nHi, #{name}. You have 3 tries to guess the secret nunmber! Its between 1 and 10"
# Creates 3 guess 
guesses_left=3  
puts "\nYou have #{guesses_left} guess left!"

# randomizes secret number
set_of_numbers = Array.new
set_of_numbers = [1,2,3,4,5,6,7,8,9,10]
secret_number = set_of_numbers.sample

# hash for messgages
messages = {:win => ["You've Won!"], :lose => ["Sorry, you've lost. The correct number was #{secret_number}"], :too_low => ["Your guess was too low."], :too_high => ["Your guess was too high"]} 

#  loop for guesses 
until guesses_left == 0
	puts "Make a guess!"

	your_guess = Integer(gets.chomp)
	guesses_left-=1
		if guesses_left > 0
				if your_guess == secret_number	
					puts "#{messages[:win]}"
					puts "\nThanks for playing"
					exit
				elsif your_guess > secret_number
					puts "#{messages[:too_high]}" + "Guesses left #{guesses_left}" 
				else your_guess < secret_number
					puts "#{messages[:too_low]}" + "Guesses left #{guesses_left}"
				end # guess left lopp
		else
			puts "#{messages[:lose]}"
			
end
end #end loop
exit




