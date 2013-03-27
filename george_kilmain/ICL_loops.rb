#!/usr/local/rvm/rubies/ruby-1.9.3-p194/bin/ruby


################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise ICL_Loops
#
################################################################################
#
# Below are variables that we will use in this exercise.
#
################################################################################
responses = Hash.new

responses[:positive] =  [ "It is certain", "It is decidedly so",
                          "Without a doubt", "Yes - definitely",
                          "You may rely on it", "As I see it, yes",
                          "Most likely", "Outlook good", "Yes",
                          "Signs point to yes" ]

responses[:neutral] =  [ "Reply hazy, try again", "Ask again later",
                         "Better not tell you now", "Cannot predict now",
                         "Concentrate and ask again" ]

responses[:negative] = [ "Don't count on it", "My reply is no",
                         "My sources say no", "Outlook not so good",
                         "Very doubtful" ]

# 1. Create a loop that counts down from 4 using `loop` and prints
#    a value from responses[:negative] using `count` as the index of the
#    Array. The loop should break when count is below 1.

puts "\n\nProblem 1:"
puts "I'm having a problem with this go to Problem 2"
#loop do |count|
#	puts responses[:negative][count]
#	break if count < 1
#	count -= 1
#end


# 2. Translate Problem 1 below to use `while` instead of `loop`.

puts "\n\nProblem 2:"

num = 4
count = 0

while num > count 
	puts responses[:negative][num]
	num -= 1
end

# 3. Translate the loop to use `until`.

puts "\n\nProblem 3:"

num = 4
count = 0

until num == count
	puts responses[:negative][num]
	num -= 1
end

# 4. Translate the loop to use `times` to iterate 3 times.

3.times {|i| puts responses[:negative][i]}

# 5. Translate the loop to use a range from 0 to 4

puts "\n\nProblem 5:"

(1..4).each {|i| puts responses[:negative][i]}

# 6. Create a new loop using the `.each` method to iterate over each
#    value in the `responses[:neutral]` Array to print each String to
#    the screen.

puts "\n\nProblem 6:"

responses[:neutral].each do |i|
	puts [i]
end
#responses[:neutral].each do |response|
 # puts responses[:neutral][response]
#end

# 7. You can also loop through Hashes. Loop through our `responses`
#    hash, printing each Array to the screen.

puts "\n\nProblem 7:"

responses.each do |k, v|
	puts [k]
end

# 8. Finally, iterate over both the Hash and then Array of that key so
#    that you individually print out each value of the Array.

puts "\n\nProblem 8:"
responses.each do |k, v|
	puts [v]
end
