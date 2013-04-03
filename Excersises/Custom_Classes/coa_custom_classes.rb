#!/Users/travisgriffiths/.rvm/rubies/ruby-1.9.3-p327/bin/ruby

# 1. Create a directory called "lib" under your exercise files directory. 
#  In the /lib directory, declare a class named Person, with first_name and last_name attribute accessors. 
#  Declare an initialize method which sets both of these attributes for a new object of this class. 
#  Then, declare a get_full_name method  which returns the first and last name values, concatenated as a single full name.
#
#  Once you've defined the class, write code below the comments to create a Person object initialized with your own first 
# and last name, then print your full name to the command line using the get_full_name method. 
# Remember, Ruby must know how to find your class, and you must require it for your code below.

require './lib/Person'

p1 = Person.new
p1.first_name = "Jon"
p1.last_name = "Doe"
puts p1.get_full_name
