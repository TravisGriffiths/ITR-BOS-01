require './player.rb'
require './secret_number.rb'

class Game
#	Make sure that all the instance variables in this class may only be READ and not WRITTEN to. 
  attr_reader :guesses_allowed, :current_guess_count, :current_guess

  @@messages = { win: "You won!",
                 lose:  "You lost! :-(",
                 too_low: "Your guess was too low!",
                 too_high: "Your guess was too high!" }

	# Initializes The number of guesses (or tries) a player is allowed before the game ends.
	# You should default number of guesses to 3 if the parameter is null.
	# Sets a guess counter to zero.
	# Creates a new instance of the Player class. 
	# Creates a new instance of the SecretNumber class and assigns it to the secret_number. Don't forget to pass along the
	# necessary parameters.
  	# initializes the current guess to nil
  def initialize(guesses_allowed, set_of_numbers)
    if guesses_allowed.to_i == nil
        @guesses_allowed = 3
    else
	@guesses_allowed = guesses_allowed
    end
    @current_guess_count = 0
    @player = Player.new()
    @secret_number = SecretNumber.new(set_of_numbers)
  end
  

  # Print who made this wonderful program :-)
  def print_created_by
    puts "Created by Sanders Kleinfeld"
  end
  

	# Calls `print_created_by` so that your players knows you created the game.
	# Asks the player to enter his/her name. Save it to @player.name.
	# Print out the number of guesses the players gets and the range of numbers they can choose from.
	# Asks the player for his/her guess. Use the `guess_correct?` method to verify the guess.
	# Continue to ask the user to guess the number so long as they have not maximized the number of guesses allowed 
	# and they did not guess correctly. 
  # Each time tell the player how many guesses left they have.
	# If at the end of the loop they still did not guess correctly, tell the player that they have lost using the
	# `@@messages` class variable and tell them the secret number.
  def start_game
    print_created_by()
    puts "Enter your name"
    @player.player_name = gets.chomp
    puts "#{@player.player_name}, you have #{@guesses_allowed} guesses to identify the secret number."
    puts "The secret number is a number from #{@secret_number.set_of_numbers.first} to #{@secret_number.set_of_numbers.last}"
    while @current_guess_count < @guesses_allowed
      puts "What is your guess?"
      player_guess = gets.chomp.to_i
      guess_success = guess_correct?(player_guess)
      if guess_success
        exit 0
      end
    end    
    puts "#{@@messages[:lose]}. The secret number was #{@secret_number.secret_number}"
  end



	# This method checks if the player guessed the correct secret number. 
  # It shoudl print out if they guessed correctly or guessed too high or too low.
	# Use the `@@messages` Hash to display this feedback.
	# Also let the player know how many guesses they have left.
	# If the guess is correct, make sure to return true, otherwise return false.
  def guess_correct?(guess)
    if guess == @secret_number.secret_number
       puts @@messages[:win]
       true
    elsif guess > @secret_number.secret_number
       puts @@messages[:too_high]
       increment_guess_count
       puts "You have #{guesses_left} guesses left"
       false
    else
       puts @@messages[:too_low]
       increment_guess_count
       puts "You have #{guesses_left} guesses left"
       false
    end

  end


  # This method should increment every time the player guesses incorrectly.
  def increment_guess_count
    @current_guess_count += 1    
  end
  

  # Calculates the guesses the player has left.
  def guesses_left
    @guesses_allowed - @current_guess_count
  end
end
