#!/Users/travisgriffiths/.rvm/rubies/ruby-1.9.3-p327/bin/ruby

################################################################################
#
# Introduction to Ruby on Rails
#
# Boolean logic and operators
#
################################################################################
#
# More conditionals and Booleans
#
################################################################################

# 1) an if statement evaluates true if the entire expression it is evaluating is true
# 2) Only false and Nil are false, everything else is true

puts "Test Ruby Truthyness"

puts "\nBoolean true is true" if true

puts "\nString '0' is true" if "0"

puts "\nInteger 0 is true" if 0

puts "\nEmpty String is true" if ""

puts "\nNil is false" unless nil

puts "\nfalse is false" unless false


# Boolean logic mixes and strings together expressions that may be true or false
# There are 3:
# NOT: not, !  negate the expression to the right returning the other boolean e.g. !true = false, not false = true
# AND: and, &&  returns true if expressions both to the right and left are true, false otherwise e.g. true && true = true
# OR: or, || returns true if expression either on the left or right are true e.g. false || true = true
# These can be mixed for compound conditionals

puts "\n\nShow Ruby Boolean Operators"

puts "\nNot false is true" if !false

puts "\ntrue AND true is true" if true && true

puts "\nfalse OR true is true" if false || true

# Some operators return implied booleans, >, <, >=, <=

puts "\n\nRuby operators returning boolean values"

puts "\n1 is greater than 2? #{1 > 2}"

puts "\n1 is less than 2? #{1 < 2}"

puts "\n1 is greater than or equal to 2? #{1 >= 2}"

puts "\n1 is less than or equal to 2? #{1 <= 2}"


# Checking for equivalence or non-equivalence also returns a boolean, ==, !=

puts "\nIs 1 equal to 2? #{1 == 2}"

puts "\nIs 1 not equal to 2? #{1 != 2}"
