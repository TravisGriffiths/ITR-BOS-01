#!/Users/travisgriffiths/.rvm/rubies/ruby-1.9.3-p327/bin/ruby

# Functions are a section of code that is definined via def 
# to for later use

puts "Simple Functions -----------"

# This is a function, because it is not attached to a class
def some_function(argument) 
	#function logic goes here
	puts "You passed '#{argument}' as an argument to 'some_function'"
end

# Call functions simply by using the name and passing any arguments
some_function("I am a string argument")


# Classes map to things we commonly use nouns to talk about
class Mammal 

	# This is a method, vice a function, because it is attached to
	# the Mammal class
	def is_warm_blooded?
		true
	end
end


puts "Classes ------------------------"

# Classes can extend each other, this means that the extending 
# class gets all the methods of the parent class, but will add
# methods of its own, extention is shown via <
class Horse < Mammal

	# attr_accessor is a nice and easy way to create implicitly very 
	# common methods, called 'getters' and 'setters' in many other
	# languages. These methods store and access (set and get) values
	# in variables linked to the class.
	attr_accessor :name, :height

	# It is not required to use attr_accessor, but it avoids having 
	# to build these methods by hand like so:
	def set_weight(wt)
		@weight = wt
	end

	# NOTE: variables inside a class use '@' to indicate they belong to a
	# class, vice the main execution area, and are called class variables
	def get_weight
		@weight
	end

	def has_four_legs?
		true
	end

	# Class methods are methods that do not require a class to be 
	# instantiated to use, confusingly there are several ways to 
	# create them, I prefer the self.method_name way of doing so
	def self.whinny
		"Whinny!!"
	end
end


#Use a class method without instantiating the class

puts "Horses go #{Horse.whinny}\n"


# Instantiate a class to use its methods. Classes are instantiated via new
# the resulting class is called the instance of the class. Each instance
# can hold different data, but will have the same methods

racehorse1 = Horse.new()
racehorse1.name = 'Seabiscut'

racehorse2 = Horse.new()
racehorse2.name = 'Secretariat'

puts "\nThis is #{racehorse1.name} and this is #{racehorse2.name}"
puts "#{racehorse1.name} is a #{racehorse1.class} and #{racehorse2.name} is a #{racehorse2.class}"

# methods created withoug attr_accessor are called in the same way
racehorse1.set_weight(823)
puts "\n#{racehorse1.name} weighs #{racehorse1.get_weight} pounds"

# Importantly, classes get all the methods of any class they extend
puts "\n#{racehorse1.name} is warm blooded: #{racehorse1.is_warm_blooded?}"
