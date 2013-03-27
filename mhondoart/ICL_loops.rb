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

for count in [4,3,2,1,0] do
puts "Problem 1: #{responses[:negative][count]}"
end

# 2. Translate Problem 1 below to use `while` instead of `loop`.

puts "\n\n"
count = 4
while count >= 0 do
puts "\nProblem 2: #{responses[:negative][count]}"
count -= 1
end

# 3. Translate the loop to use `until`.

puts "\n\n"
count = 4
until count < 0 do
puts "\nProblem 3: #{responses[:negative][count]}" 
count -= 1
end

# 4. Translate the loop to use `times` to iterate 3 times.

puts "\n\n"
3.times do |i|
	puts "Problem 4: #{responses[:negative][i]}" 
end

# 5. Translate the loop to use a range from 0 to 4
puts "\n\n"
(0..4).each do |i|
puts "\nProblem 5: #{responses[:negative][i]}" 
end


# 6. Create a new loop using the `.each` method to iterate over each
#    value in the `responses[:neutral]` Array to print each String to
#    the screen.

puts "\n\n"
(0..4).each do |i|
puts "\nProblem 6: #{responses[:neutral][i]}" 
end

# 7. You can also loop through Hashes. Loop through our `responses`
#    hash, printing each Array to the screen.

puts "\n\n"
responses.each_key do | k|
puts "\Problem 7:key is #{k}" 
puts "\Problem 7: #{responses[k]}"
end

# 8. Finally, iterate over both the Hash and then Array of that key so
#    that you individually print out each value of the Array.

puts "\n\nProblem 8:"
puts "\n\n"
responses.each_key do | k|
puts "\Problem 8: #{k}" 
(0..10).each do |i|
puts " #{responses[k][i]}"
end
end

