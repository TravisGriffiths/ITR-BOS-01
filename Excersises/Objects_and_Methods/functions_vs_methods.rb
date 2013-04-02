#!/Users/travisgriffiths/.rvm/rubies/ruby-1.9.3-p327/bin/ruby

# Methods are a section of code that is definined via def 
# to for later use, when these are not attached to a class
# many programmers will refer to this as simply a function,
# Matz states that he doesn't make this distinction and calls
# all named sections of code methods reguardless of attachment
# to a class.

#puts "Simple Method -----------"

# This is not attached to a class, but still is called a method in Ruby
#def some_method(argument) 
	#function logic goes here
#	puts "You passed '#{argument}' as an argument to 'some_method'"
#end

# Call simple methods by using the name and passing any arguments
#some_function("I am a string argument")


# Classes map to things we commonly use nouns to talk about
# Generaly this looks like: noun.verb(adverb)
# Examples:  Horse.run(:fast), Door.is_locked?, or Array.fetch(index)
# 
# This is an example of what is known as an abstract class because it
# itself is NOT instantiated, it has functionality that it adds to
# extending classes via the extension mechanism.
class Mammal 

	# methods in extended classes are available to the classes
	# which extend them
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

	def initialize
	
	end

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

	def get_info 
		if @height && @weight
			"The ratio of height and weight: #{ht_wt_ratio}"
		else
			"Need both height and weight"
		end
	end

	# Class methods are methods that do not require a class to be 
	# instantiated to use, confusingly there are several ways to 
	# create them, I prefer the self.method_name way of doing so
	def self.whinny
		"Whinny!!"
	end

	private

	def ht_wt_ratio
		(@height.to_f/@weight.to_f)
	end
end


#Use a class method without instantiating the class

#puts "Horses go #{Horse.whinny}\n"


# Instantiate a class to use its methods. Classes are instantiated via new
# the resulting class is called the instance of the class. Each instance
# can hold different data, but will have the same methods

#racehorse1 = Horse.new()
#racehorse1.name = 'Seabiscut'


#racehorse2 = Horse.new()
#racehorse2.name = 'Secretariat'

#puts "\nThis is #{racehorse1.name} and this is #{racehorse2.name}"
#puts "#{racehorse1.name} is a #{racehorse1.class} and #{racehorse2.name} is a #{racehorse2.class}"

# methods created withoug attr_accessor are called in the same way
#racehorse1.set_weight(823)
#puts "\n#{racehorse1.name} weighs #{racehorse1.get_weight} pounds"

# Ruby is strongly encapsulated, this means that the instance variables 
# (the @ variables) and other values may only be accessed by using 
# methods, and may not be accessed directly.

############ DOESN'T WORK #################

## Can't do this, because @weight is encapsulated, it must be accessed via
# the get_weight method, not directly.
# puts "\n#{racehorse1.name} weighs #{racehorse1.weight}"

# Importantly, classes get all the methods of any class they extend
#puts "\n#{racehorse1.name} is warm blooded: #{racehorse1.is_warm_blooded?}"




