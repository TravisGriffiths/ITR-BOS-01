
#Generic welcome message
creator = "George Kilmain"
welcome_message = "Welcome to the Secrect Number Game. This game was created by #{creator}."
puts welcome_message

#get player name
puts "Please enter your name below and press enter:"
player_name = gets.chomp

#Personalized welcome message
puts "Welcome, #{player_name}, you have 3 guesses to guess the secrect number between 1-10"

#secrect number 
secrect_number = 7

#create counter variable
guesses_left = 3

while guesses_left > 0 do

	#get player guess
	puts "Please make your guess:"
	#cast input to integer
	player_guess = gets.chomp.to_i

	if player_guess == secrect_number
		# If the player guessed correctly
		puts "Congratulations! You guessed correctly!"
		# exit the while loop
		exit

	elsif player_guess > secrect_number
		puts "You guessed a number greater than the secrect number."
		guesses_left = guesses_left - 1
		puts "You have #{guesses_left} guesses left."
	
	elsif player_guess < secrect_number
		puts "You guessed a number less than the secrect number."
		guesses_left = guesses_left - 1
		puts "You have #{guesses_left} guesses left."
 	end
	
	# Display message to player telling them they have no more guesses left
	# and display secrect message
	if guesses_left == 0
	puts "You have no more guesses. The secrect number was #{secrect_number}"
	
	end


end

# JC - Good work George! Perfect execution. My next suggestion would be to set the
# JC - secret number to a random number that's defined each time.