###############################################################################
#
# Introduction to Ruby on Rails
#
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

#!/usr/bin/ruby -w
# Hello fellow Ruby-ers! This is my first ruby program! Ek! -Lianne Castellanos


# JC - Remember that since this is a string, we have to encapsulate it with " "
print Welcome to the Secret Number Game!
first_name = "Lianne "
last_name = "Castellanos "

# JC - Good work Lianne! Instead of adding the space to your first name variable above,
# JC - try sticking it in your output string like the example in step 6 above.
puts "Created by " + first_name + last_name
