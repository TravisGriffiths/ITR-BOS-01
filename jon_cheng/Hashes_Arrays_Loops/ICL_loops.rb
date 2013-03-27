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

puts "Problem 1:"

# 2. Translate Problem 1 below to use `while` instead of `loop`.

count = responses[:negative].length-1

while count >= 1 do
  puts responses[:negative][count]
end

puts "\n\nProblem 2:"

# 3. Translate the loop to use `until`.

count = responses[:negative].length-1
until count < 1 do
  puts responses[:negative][count]
end

puts "\n\nProblem 3:"

# 4. Translate the loop to use `times` to iterate 3 times.

count = 0
3.times do
  puts responses[:negative][count]
  count += 1
end

for i in 0..2
  puts responses[:negative][i]
end


puts "\n\nProblem 4:"

# 5. Translate the loop to use a range from 0 to 4

(0..4).each do |n|
  puts responses[:negative][n]
end

puts "\n\nProblem 5:"

# 6. Create a new loop using the `.each` method to iterate over each
#    value in the `responses[:neutral]` Array to print each String to
#    the screen.

responses[:negative].each do |count|
  puts count
end

puts "\n\nProblem 6:"

# 7. You can also loop through Hashes. Loop through our `responses`
#    hash, printing each Array to the screen.

puts responses.values

puts "\n\nProblem 7:"

# 8. Finally, iterate over both the Hash and then Array of that key so
#    that you individually print out each value of the Array.

responses.values.each do |n|
  n.each do |m|
    puts m
  end
end

puts "\n\nProblem 8:"

