#!/Users/jparshley/.rvm/rubies/ruby-1.9.3-p392/bin/ruby
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
# Put your solution below this line.
#
###############################################################################

###############################################################################
#   VARIABLE USAGE:
#   first_name:       Holds creators first name
#   last_name:        Holds creators last name
#   user:             Holds the users name that is input from the command line
#   guesses_left:     Holds the number of guesses the user has.
#   set_of_numbers:   holds the numbers 1-10 as integers that a player will guess from
#   secret_number:    Holds the secret number to be guessed which is a random element from
#                     'set_of_numbers' array
#   messages:         A hash to hold the messages given as feedback to the user based on 
#                     how their guess were.
###############################################################################
first_name = "Joey"                                                     # Holds first name of creator
last_name = "Parshley"                                                  # Holds the last name of the creator
set_of_numbers = (1..10).to_a                                           # Range of 1-10 to be guessed from 
secret_number = set_of_numbers.sample()                                 # Random number generated from set_of_numbers
guesses_left = 3                                                        # Number of guesses the user has.
messages = {                                                            # Text for messages - possible localization?
  welcome: "Welcome to the Secret Number Game!",
  creator: "Created by #{first_name} #{last_name}",
  whats_name: "What is your name",
  tries: "\n\nYou will have three tries to guess the number I am thinking of between 1 and 10.",
  initial_guesses: "You have #{guesses_left} guesses left.",
  pick_a_number: "Please guess a number between 1 and 10",
  greeting: "Hi",
  win: "You Won!",
  lose: "You Lost :-(",
  too_low: "too low",
  too_high: "too high",
  secret_number_was: "The secret number was #{secret_number}"
}

# Welcome the users and let them know that I Am the creator
puts
puts"#{messages[:welcome]}"                                             # Welcome the user
puts
puts "#{messages[:creator]}"                                            # Im the creator
puts

# Ask the user to supply their name and let them know how many quesses they have
puts"#{messages[:whats_name]}"                                          # Ask who they are
user = gets.chomp
puts
puts "#{messages[:greeting]} #{user}!#{messages[:tries]}"               # Tell them what to do including how many tries
puts
puts "#{messages[:initial_guesses]}"                                            # How many guesses are left
puts

# Ask the user for their guess stating if won or not, if they are wrong let them know if they
# are too low or high. Ask them for another guess until they have used up all three tries
# letting them know how many chances they have left
while guesses_left > 0 do
  puts "#{messages[:pick_a_number]}"                                    # Ask them to pick a number
  puts
  guess = gets.to_i
  if(guess == secret_number)
    puts
    puts "#{messages[:win]}"                                            # The numbers match so tell the user they won
    puts
    break
  else
    if(guess < secret_number)
      error = "#{messages[:too_low]}"                                   # The guess is too low, let em know
    else
      error = "#{messages[:too_high]}"                                  # The guess is too high, let em know
    end 
    puts
    if(guesses_left - 1 == 0)
      puts "#{messages[:lose]}"
      puts "#{messages[:secret_number_was]}"
    else
      puts "#{guess} is #{error}!\n\nYou have #{guesses_left - 1} left."  # How many more guesses? 
      puts
    end
  end
  guesses_left = guesses_left - 1
end
