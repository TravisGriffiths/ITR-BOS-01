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
#this is where we get the number
iguess = gets.to_i

# JC - the line below is kinda funky syntax and isn't necessary. Remember, if we want to create an array
# JC - we can use any of the steps here: http://stackoverflow.com/questions/4908413/how-to-initialize-an-array-in-one-step-using-ruby
# JC - this seems kinda like a mix of the two
rnum = [1...20]

# JC - This line below is all you need to create a single random number. One gotcha is that rand(20) returns a number between
# JC - 0 and 19. If we want newrandom to be from 1-20, we should do something like so:
# JC - newrandom = rand(20)+1  OR  newrandom = rand(1..20)
newrandom = rand (20)

#this is where we compare the two
# JC - since newrandom is already a random number from 1-20, we can just compare like so:
# JC - if (newrandom != iguess )
if ( rnum[newrandom] != iguess)

# JC - I guessed wrong! But what was the random number that I had to guess?? 
# JC - Outuputting it here might be a good idea for the user and for debugging :)
puts "wrong number try again!"
else
puts "you got it!"
end
puts "the end"

