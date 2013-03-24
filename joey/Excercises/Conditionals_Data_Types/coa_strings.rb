################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise strings
#
################################################################################
#
# Working with Strings
#
################################################################################
# 1. declare and assign variables named first and last, with string values and a variable named age with a number value
first_name = "Joey"
last_name = "Parshley"
age = 45
# 2. declare and display a variable named user containing the combined value of the Task # 1 variables
user = first_name + ' ' + last_name + ' ' + age.to_s
puts user
# 3. display the three variables using string interpolation
puts "#{first_name} #{last_name} is #{age} years old"
# 4. display the string "You typed X on the command line" where X is input by the user
puts "Please type something"
input = gets
#using the chomp method to get rid of the new line character '\n'
print "You typed '#{input.chomp}' on the command line\n"

# 5. modify your Task # 4 code to display the input in all capital letters
print "You typed '#{input.chomp.upcase}' on the command line\n"
