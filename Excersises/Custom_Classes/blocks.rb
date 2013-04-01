#!/Users/travisgriffiths/.rvm/rubies/ruby-1.9.3-p327/bin/ruby

# Passing blocks: in Ruby and particularly in Rails blocks are often
# passed as arguments. This can be confusing, but is because Ruby
# supports functional programming like javascript does. Simply put,
# functional programming is when a programming language supports
# putting not only values but functions into variables as well as
# passing functions into methods as arguments or returning them from
# a method as a return value. Ruby has several methods for doing this
# but the most common is by passing blocks.

puts "Blocks may be passed to anything ----------------------------"

a = [1, 2, 3]
 #blocks may be passed to any method, but will be silently ignored 
 # by most of them.
a.push(4) { |i| puts i} # does nothing

puts "Showing resulting array a: #{a}"

# methods like .each rely exclusively on the block passed to them

puts "But only are used by some methods ----------------------------"

a.each {|i| puts "block triggering: #{i}"} #acts on the block passed to it

#The keyword yield invokes the passed block, and may be used in your own methods

puts "\nMathmatics Example-------------------------------------------"
def mathmatics(a, b)
	yield a, b  #pass arguments into the block by listing them after the yield
end

mathmatics(3, 5) do |first, second|
	puts "Addition: #{first + second}"
	puts "Subtraction: #{first - second}"
	puts "Multiplication: #{first * second}"
	puts "Division: #{first / second}"
end


puts "\nYield can take arrays and hashes as well"

def sums
	puts "Total 1 to 10: #{yield (1..10).to_a}"
	puts "Total 3 to 15: #{yield (3..15).to_a}"
end

sums do |array|
	total = 0
	array.each { |i| total += i}
	total
end
