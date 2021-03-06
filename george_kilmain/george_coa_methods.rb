#!/Users/travisgriffiths/.rvm/rubies/ruby-1.9.3-p327/bin/ruby
################################################################################
#
# Introduction to Ruby on Rails
#
# Code Along Methods
#
################################################################################
#
# Below are variables that we will use in this exercise.
#
################################################################################ 

months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

provinces = {
				"Australian Capital Territory" => "ACT",
				"New South Wales" => "NSW",
				"Northern Territory" => "NT",
				"Queensland" => "QLD",
				"South Australia" => "SA",
				"Tasmania" => "TAS",
				"Victoria" => "VIC",
				"Western Australia" => "WA"
			}

# 1. Write a method which accepts a province code and returns the province name. Ask the user to input a code
# then display the result of passing the input to your method. If the hash does not include the province code
# they provide, let the user know their input is invalid. Challenges in this exercise include: how to access 
# the provinces hash from within your method, and how to return the hash key (province name) by using its 
# value (province code). You may want to explore built-in Hash class methods including .has_value? .invert and .fetch. 
puts "\n--------------------" # line to distinguish exercise output

def get_province_name(province_code)
provinces = {
				"Australian Capital Territory" => "ACT",
				"New South Wales" => "NSW",
				"Northern Territory" => "NT",
				"Queensland" => "QLD",
				"South Australia" => "SA",
				"Tasmania" => "TAS",
				"Victoria" => "VIC",
				"Western Australia" => "WA"
			}

print "What province code? would you like to see?"
pc = gets.chomp

if(proovinces.values.include?(pc))
puts "#{pc} is #{provinces.invert[pc]}"

else

puts "This is not a valid code. Valid codes are: "
puts province.values
end




end #get_province_name


# 2. Write a method which accepts any number of parameters representing months, by number 1 ("January") through 
# 12 ("December"), and displays the corresponding month names in a single line. Be aware of variable scope, and 
# that arrays begin with zero, not one.
puts "\n--------------------" # line to distinguish exercise output

def get_month(*args)
	months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
	result = ""
	args.each do |month|	
		if (mo)
			
		end