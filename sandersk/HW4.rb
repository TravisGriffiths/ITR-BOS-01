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

GUESSES_ALLOWED = 3

def increment_guess_count(number)
  number + 1
end

def guesses_left(guesses_made)
  GUESSES_ALLOWED - guesses_made
end

set_of_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

secret_number = set_of_numbers.sample()

messages = {:win => "Hooray! You correctly guessed the secret number",
	    :lose => "Sorry, you ran out of guesses. The secret number was #{secret_number}.",
	    :too_low => "Your guess was too low. Try a higher number.",
	    :too_high => "Your guess was too high. Try a lower number."
	    }
 
guesses_left = 3
guesses_made = 0

puts "Welcome to the secret number game. I will be your host"

puts "What is your name"

player_name = gets.chomp

puts "Hi there #{player_name}! You have 3 guesses to guess the secret number, which is between 1 and 10"

while guesses_left > 0 
  puts "You have #{guesses_left} guesses left"
  puts "Enter your guess"
  player_guess_as_int = gets.to_i
  guesses_made = increment_guess_count(guesses_made)
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
    guesses_left = guesses_left(guesses_made)
  else
   puts messages[:too_low]
   guesses_left = guesses_left(guesses_made)
  end
end

# If loop completed, we're out of guesses and player lost
puts messages[:lose]