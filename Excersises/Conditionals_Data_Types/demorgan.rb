#!/Users/travisgriffiths/.rvm/rubies/ruby-1.9.3-p327/bin/ruby

################################################################################
#
# Introduction to Ruby on Rails
#
# Extra Information, not required for anything. This is for those who want to 
# spend some time getting to know deeper information.
#
################################################################################
#
# More conditionals and Booleans
#
################################################################################



# Short substantiation of DeMorgans Law:
# For any boolean expression, you can get the converse (negation) of it by:
# taking the converse of each item, i.e. a becomes not a and not b becomes b
# flipping each and/or to the other one, such that and becomes or and or becomes and
# WIKI: http://en.wikipedia.org/wiki/De_Morgan's_laws


puts "Evaluating DeMorgans"
a = b = c = [true, false]

for i in a do
	for j in b do
		for k in c do
			if((i and j or k) != (not i or not j and not k)) #These should always evaluate to the other boolean, thus !=
				puts "Different" #should always see this
			else
				puts "Same: I - #{i}, J - #{j}, K - #{k}" #Should never see this
			end
		end
	end
end


# Rule of using unless: DON'T..unless it is easier to read
puts "\nEvaluating Unless:"

a = true
b = false
c = true

if(not a or not b and c) #Hard to read
	puts "Doing Stuff"
end

#easier
unless(a and b or not c) #Still bad, but better
	puts "Doing Stuff more simply"
end


#Trinary Logic
puts "\nEvaluating Trinary Logic"


a = true 
a ? (puts "a is true") : (puts "a is false") #NOTE: () needed because the values resulting from a ?: evaluation must be a single simple expression, no arguments

a = false
a ? (puts "a is true") : (puts "a is false")

# Rule of using trinary logic operator: DON'T...unless it is easier to read


# Other boolean operators || is about the same as 'or', and && is about the same as 'and'
# Major difference, order of operation, || and && are evaluated BEFORE 'and', 'or' so do NOT
# mix them. Most shops use &&, || exclusively.

puts "\nEvaluating ||, &&"
a = true
b = false

if(a or b and a) 
	puts "and, or True"
else 
	puts "and, or False"
end

if(a || b && a)
	puts "||, && true"
else 
	puts "||, && false"
end

# List of Ruby operators: http://www.tutorialspoint.com/ruby/ruby_operators.htm

