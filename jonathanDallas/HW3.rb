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
# - easy way
# number = rand(1..10)
# - more laborous way
set_of_numbers = []
for i in 1..10
	set_of_numbers.push(i)
end
number = set_of_numbers.sample()

# create a list of messages to display base on guesses
messages = {
	winner: "\nCongratulation #{name} you just won a sense of accomplishment",
	loser: "sorry the number was #{number}",
	too_high: "\nToo High",
	too_low: "\nToo Low"
}

# prompt the user to start guessing
puts "\nIn #{guesses_allowed} tries can you figure out the number, between 1 and 10 that I'm thinking of?"

# Ask the user for a guess at least three times
for i in 1..guesses_allowed
	print "guess #{i}:"

	# get the number entered from the user
	guess = gets.chomp.to_i

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
