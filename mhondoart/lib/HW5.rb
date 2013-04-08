############################################################################### 
# 
# Introduction to Ruby on Rails 
# 
# Homework 05 
#
# Purpose:
#
# Read the instructions below and complete the exercises in this file. This Lab
# will help you review more advanced Object-Oriented topics. 
#
# This exercise changes the secret number game into an object oriented program. 
###############################################################################
#
# 1. Complete the instructions in secret_number.rb, player.rb and game.rb and HW_05.rb.
#
# 2. Remember to keep your code clean and keep in mind how your file is
#    laid out. You want to make sure that the TAs reading your work will
#    understand your thought process.
###############################################################################
#
# Student's Solution
#
###############################################################################
#	Include the Player, SecretNumber, and Game classes
#
# Purpose:
require "./Player.rb"
require "./secret_number.rb"
require "./Game.rb"

#   Instantiate a new Game (using your preferred number of guesses, range of numbers)

g2=Game.new(3,[1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

#   Start the Game. 

g2.start_game
###############################################################################
# http://railscasts.com/episodes/267-coffeescript-basics
#
# Coffeescript is a language that compiles to Javascript, but is much simpler, 
# and avoids many of the difficult parts in raw Javascript. It is bundled 
# directly into rails. Documentation and a web interpreter can be found here: 
# http://jashkenas.github.com/coffee-script/
#
# Coffeescript allows for quick javascript development in a rails environment.
#
###############################################################################
#
# Challenge: change one or more of the methods in your solution to use a block
# argument and yield.
#
# Further Challenge: Change one or more of the methods in your solution to 
# take either a block OR normal arguments. 
#
###############################################################################
