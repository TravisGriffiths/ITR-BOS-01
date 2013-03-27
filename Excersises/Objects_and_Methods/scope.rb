#!/Users/travisgriffiths/.rvm/rubies/ruby-1.9.3-p327/bin/ruby

################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise 4.3
#
################################################################################

############################# About Scope ######################################
# Each method defines a scope, or context. Variables declared outside this 
# context do not exist UNLESS they are passed as arguments. OR are declared as
# a global variable using $. Global variables cause problems between programmers
# as no one can be sure what is used. Therefore they should NOT be used except
# as a specific design decision by an entire software TEAM.
#
################################################################################

puts "Scope --------------------------------------------"

x = "I am outside of everything"

y = "I am y outside of everything"

$g = "I am a global"  #$ denotes a global variable

puts "\nIn main scope x is: #{x}"

puts "In main scope y is: #{y}"

puts "In main scope $g is: #{$g}"

def a_method

	x = "I am x inside of a method"

	puts "\nIn a_method scope x is: #{x} global $g is: #{$g}"

	### WILL NOT WORK, y does not exit in this scope ###
	# puts "y is: #{y}"

	def an_inner_method

		x = "I am x in an inner method"

		puts "\nIn an_inner_method scope x is: #{x} global $g is: #{$g}"

		### WILL NOT WORK, y does not exit in this scope ###
		# puts "y is: #{y}"
	end

	an_inner_method()
end

a_method()

### Variables can be imported into a scope by being passed as an argument ###

puts "\nScope of arguments -------------------------------------------"

def a_different_method(argument)

	x = "I am x in a_different_method"

	puts "\nIn a_different_method x is: #{x}, AND he passed argument is: #{argument}"
end

a_different_method(y)
