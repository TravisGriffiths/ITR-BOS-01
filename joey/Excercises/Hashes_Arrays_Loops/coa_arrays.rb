#!/Users/jparshley/.rvm/rubies/ruby-1.9.3-p392/bin/ruby
################################################################################
#
# Introduction to Ruby on Rails
#
# Code Along Arrays 
# Learning Objective: Introduce array syntax.
# Note: This is a cumulative example. 
#
################################################################################


# 1. Create an array that stores three different months ("January, February, March").
months = ["January","February","March"]
puts "\n========================="
puts months
# 2. Add two more months to your array in a single expression ("April May").
months.push("April","May")
puts "\n========================="
puts months

# 3. Convert your name to an array, and display it, in a single expression
puts "\n========================="
puts "Joey Parshley".split("")
# 4. Remove and display the last value in the months array.
puts "\n========================="
puts months.pop()
puts "\n========================="
# Was April and May removed why or why not.
puts "\n========================="
puts months
puts "\n========================="
