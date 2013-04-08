class Game
#Make sure that all the instance variables in this class may only be READ and not WRITTEN to. 
  attr_reader :guesses_allowed, :current_guess_count, :current_guess , :set_of_numbers, :num_guesses_left
  @@messages = { win: "You won!",
                 lose:  "You lost! :-(",
                 too_low: "Your guess was too low!",
                 too_high: "Your guess was too high!" }
  @@first_name = "Maryann"
  @@last_name = "Hondo"

  
# Initializes The number of guesses (or tries) a player is allowed before the game ends.
# You should default number of guesses to 3 if the parameter is null.
# Sets a guess counter to zero.


  def initialize(g=nil, n=nil)
	if (n.nil?)
  		@set_of_numbers = Array.new(1..10)
#		puts "set of numbers" + "#{@set_of_numbers}"
	else
#		puts "n= " + "#{n}"
		@set_of_numbers = Array.new(n)
	end 
	if (g.nil?) 
  		@guesses_allowed = 3
	else
#		puts "number of guesses" + "#{g}"
  		@guesses_allowed = g
	end
  	@num_guesses_left = 0
  	@current_guess_count = 0
  end

  def print_created_by
	puts "this game was created by " + "#{@@first_name}" + " " + "#{@@last_name}" 
  end

  #
  # This method should increment every time the player guesses incorrectly.
  #
  def increment_guess_count
    @current_guess_count += 1
  end
  
  #
  # Calculates the guesses the player has left.
  #
  def guesses_left()
  	return ((@guesses_allowed - @current_guess_count)) 
  end


	# This method checks if the player guessed the correct secret number. 
	# It shoudl print out if they guessed correctly or guessed too high or too low.
	# Use the `@@messages` Hash to display this feedback.
	# Also let the player know how many guesses they have left.
	# If the guess is correct, make sure to return true, otherwise return false.
  	# @@messages = { win: "You won!",
        #         lose:  "You lost! :-(",
        #         too_low: "Your guess was too low!",
        #         too_high: "Your guess was too high!" }

  def guess_correct?(c_guess,s) 
#	puts "secret number is " "#{s}"
	if (c_guess == s) 
		puts "#{@@messages[:win]}"
		return true
	else
		if (c_guess < s)
			puts "#{@@messages[:too_low]}"
		else
			puts "#{@@messages[:too_high]}"
		end
		return false
	end
  end


  def start_game
  	#
  	# Print who made this wonderful program :-)
  	# 
	print_created_by
  	# 
  	# Creates a new instance of the Player class. 
  	# 
	p=Player.new()
  	# 
  	# Asks the player to enter his/her name. Save it to @player.name.
  	# 
	puts "What is your name? "
	name= gets.chomp
	p.set_name(name)
  	# 
	#
	# Creates a new instance of the SecretNumber class and assigns it to the secret_number. 
  	# initializes the current guess to nil
	#
	s=SecretNumber.new()
	#s=SecretNumber.new(1...10)

  	# 
	# Print out the number of guesses the players gets and the range of numbers they can choose from.
  	# 
	puts "#{name}" + " you have " + "#{@guesses_allowed}" + " tries to guess a number from " + "#{@set_of_numbers}"
	increment_guess_count
#	puts " current guess count " + "#{@current_guess_count}" 
	while ( guesses_left >= 0)  do
#		puts "current guess count " + "#{current_guess_count}"
  		# 
		# Asks the player for his/her guess. Use the `guess_correct?` method to verify the guess.
  		# 
		puts "What is your guess?"
		c_guess= gets.to_i
		@current_guess=c_guess
#		puts "#{@current_guess}"
		if  guess_correct?(c_guess, s.secret_number)  
			return
		else
			increment_guess_count
		end


  		# Continue to ask the user to guess the number so long as they have not maximized the number of guesses allowed 
		# and they did not guess correctly. 
	  	# Each time tell the player how many guesses left they have.
		# If at the end of the loop they still did not guess correctly, tell the player that they have lost using the
		# `@@messages` class variable and tell them the secret number.
	end
	puts "Sorry you have run out of tries...." +  "#{@@messages[:lose]}" + "...come back and play again"
  end

end

