#!/Users/jparshley/.rvm/rubies/ruby-1.9.3-p392/bin/ruby
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
4.downto(1) do |count|
  puts "#{responses[:negative][count]}"
end

# 2. Translate Problem 1 below to use `while` instead of `loop`.

puts "\n\nProblem 2:"
count = 4
while(count >=1)
  puts "#{responses[:negative][count]}"
  count = count - 1
end

# 3. Translate the loop to use `until`.

puts "\n\nProblem 3:"
count = 4
until count == 0
  puts "#{responses[:negative][count]}"
  count -= 1
end
# 4. Translate the loop to use `times` to iterate 3 times.

puts "\n\nProblem 4:"
count = 4
4.times do
  puts "#{responses[:negative][count]}"
  count -=1
end


# 5. Translate the loop to use a range from 0 to 4

puts "\n\nProblem 5:"
  


# 6. Create a new loop using the `.each` method to iterate over each
#    value in the `responses[:neutral]` Array to print each String to
#    the screen.

puts "\n\nProblem 6:"
responses[:neutral].each do |response|
  puts response
end

# 7. You can also loop through Hashes. Loop through our `responses`
#    hash, printing each Array to the screen.

puts "\n\nProblem 7:"
responses.each do |k,v|
  puts "#{k}, #{v}"
end


# 8. Finally, iterate over both the Hash and then Array of that key so
#    that you individually print out each value of the Array.


