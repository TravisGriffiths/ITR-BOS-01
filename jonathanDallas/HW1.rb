# HW 01
#
# Purpose:
#
# Read the taks below and complete the exercises in this file. We will start
# to write the beginnings of our "Secret Number Game" using what we've
# learned in Ruby Lesson 01.
#
###############################################################################
#
# 1. Read an Interview with the Creator of Ruby
# 	 http://linuxdevcenter.com/pub/a/linux/2001/11/29/ruby.html
#
# 2. Read this Introduction to Programming
# 	 http://en.wikiversity.org/wiki/Introduction_to_Programming/About_Programming
#
# 3. In this file under "Student Solution," print the welcome text of your Secret 
#    Number Game
#
#	(i.e.) "Welcome to the Secret Number Game!"
#
# 4. Above your welcome message, write a comment to other coders introducing yourself.
#	 .
#
#
# 5. Create two new variables, one for your last name, one for your first name
#    and enter your first and last name as strings.
#
#    first_name = ""
#    last_name = ""
#
# 6. Print to the screen that your game was created by you by concating the
#    first and last name variables.
#
#    (i.e.) "Created by " + first_name + " " + last_name
#
# 7. Feel free to add more lines of text or add comments to remind you of what
#    you've learned.
#
###############################################################################
#
# Student Solution
#
###############################################################################

# Jonathan Dallas is a front end web developer

puts "Welcome to the Secret Number Game!"

first_name = "Jonathan"
last_name = "Dallas"

puts ""
puts "Created by " + first_name + " " + last_name
puts ""
# create a random number from 1 to 10
number = rand(1..10)
# prompt the user to type a number between 1 and 10
puts "Enter a number between 1 and 10"
# get the number entered from the user
guess = gets.to_i

# if the user's number matches the random number
if number == guess
	# tell them they guessed correctly
	puts "Yay you guessed correctly"
else
	# otherwise tell them what the number was supposed to be
	puts "sorry the number was - " + number.to_s
end




