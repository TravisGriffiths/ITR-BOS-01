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

######################################
#
# Welcome the users and let them know that I Am the creator
#
######################################
puts
puts"Welcome to the Secret Number Game"
puts

# Create two variables, one to hold my first name and one to hold my last name
first_name = "Joey"
last_name = "Parshley"

# Print out to screen the message telling the user that this was created by me
# Done by concatenating the Strings with the values of the variables created up above
puts "Created by " + first_name + " " + last_name
puts

# Ask the user to supply their name. Store it inside the 'user' variable
puts "What is your name"
user = gets.chomp
puts
puts "Hi #{user}!\n\nYou will have three tries to guess the number I am thinking of between 1 and 10."
puts

# Create an variable called 'guesses_left' to hold the number of guesses the user has. Iniitialize it to be 3

guesses_left = 3

# Tell the user how many guesses there are left using string interpolation

puts
puts "You have #{guesses_left} guesses left."
puts

# Create a variable called 'secret_number' to hold the secret number which will be an integet between 1 and 10

secret_number = 7

# Ask the user for their first guess
# If the user has guessed the secret number tell them they won.
# IF the user is wrong decrement the number of guesses left and let them know
# and ask for another guess tell them if they were too high or low
# If they get it wrong after three tries tell them what the number was

while guesses_left > 0 do
  puts "Please guess a number between 1 and 10"
  puts
  guess = gets.to_i
  if(guess == secret_number)
    puts
    puts "You Won!"
    puts
    break
  else
    if(guess < secret_number)
      error = "too low"
    else
      error = "too high"
    end 
    puts
    puts "#{guess} is #{error}!\n\nYou have #{guesses_left - 1} left."
    puts
    guesses_left = guesses_left - 1
  end
end
puts "The secret number was #{secret_number}"

# JC - Great work Joey, perfect execution. My next step to you would be to reimplement
# JC - this while using a random number for the secret number :)


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

