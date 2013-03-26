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

set_of_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

secret_number = set_of_numbers.sample()

messages = {:win => "Hooray! You correctly guessed the secret number",
	    :lose => "Sorry, you ran out of guesses. The secret number was #{secret_number}.",
	    :too_low => "Your guess was too low. Try a higher number.",
	    :too_high => "Your guess was too high. Try a lower number."
	    }
 
guesses_left = 3

puts "Welcome to the secret number game. I will be your host"

puts "What is your name"

player_name = gets.chomp

puts "Hi there #{player_name}! You have 3 guesses to guess the secret number, which is between 1 and 10"

while guesses_left > 0 
  puts "You have #{guesses_left} guesses left"
  puts "Enter your guess"
  player_guess_as_int = gets.to_i
  unless (0 < player_guess_as_int) and (player_guess_as_int <= 10)
    puts "Your guess is not a number between 1 and 10. Try again"
    next
  end
  if player_guess_as_int == secret_number
   puts messages[:win]
    # Quit script entirely on a win
    exit 0
  elsif player_guess_as_int > secret_number
    puts messages[:too_high]
    guesses_left -= 1
  else
   puts messages[:too_low]
   guesses_left -= 1
  end
end

# If loop completed, we're out of guesses and player lost
puts messages[:lose]