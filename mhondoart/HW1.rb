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
# this is the first assignment in Ruby on Rails class
puts "Hello and Welcome to the Secret Number Game!"
first_name = "Maryann"
last_name = "Hondo"
puts "this game was created by" + first_name + " " + last_name + " "
print "to play the game, pick a number between 1 & 20 and hit enter "
iguess = gets.to_i
rnum = [1...20]
newrandom = rand (20)
if ( rnum[newrandom] != iguess)
puts "wrong number try again!"
else
puts "you got it!"
end
puts "the end"

