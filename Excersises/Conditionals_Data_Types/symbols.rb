#!/Users/travisgriffiths/.rvm/rubies/ruby-1.9.3-p327/bin/ruby
################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise symbols
#
################################################################################

# Every language has an interpreter or compiler which builds a 'symbol table'
# the symbol table is a list of all variables and objects contained in a program
# Ruby allows you to add directly to the symbol table by use of symbols.
# The advantage of this is to allow you to declare unique values that always 
# refer back to the same unique thing, rather than many different instances of 
# things that hold the same values at the time.

puts "Ruby Symbols example"

###############################################################################
# NOTE!!!  You may NOT assign to a symbol, a symbol IS ITSELF
###############################################################################

#Symbols are created by the mere act of putting them in a program, they need no
#further declaration.

#How to use symbols:
#
# 1) Key hashes
# 2) Pass arguments

hash = { :red => 'apple', :yellow => 'banana'}

puts "\nGet the value for the :red key from the hash: #{hash[:red]}"


# Use symbols to pass arguments:

def a_function(argument)
	if argument == :say_hello
		puts "Greetings"
	end
end

puts "\nSay hello by passing a symbol as an argument"

a_function(:say_hello)

