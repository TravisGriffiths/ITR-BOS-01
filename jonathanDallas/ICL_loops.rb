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

j = 4
for i in 0..4
   	puts "\nProblem 1: #{responses[:negative][j]}"
	j -= 1
end


# 2. Translate Problem 1 below to use `while` instead of `loop`.

i = 4
while i >= 0 do
	puts "\n\nProblem 2: #{responses[:negative][i]}"
	i -= 1
end

# 3. Translate the loop to use `until`.

i = 4
until i < 0 do
   	puts "\n\nProblem 3: #{responses[:negative][i]}"
	i -= 1
end


# 4. Translate the loop to use `times` to iterate 3 times.


3.times do |i|
	puts "\n\nProblem 4: #{responses[:negative][i]}"
end

# 5. Translate the loop to use a range from 0 to 4

j = 4
for i in 0..4
   	puts "\nProblem 5: #{responses[:negative][j]}"
	j -= 1
end

# 6. Create a new loop using the `.each` method to iterate over each
#    value in the `responses[:neutral]` Array to print each String to
#    the screen.

i.to_i
responses[:neutral].each do |value|
	puts "\n\nProblem 6: #{value}"
end

# 7. You can also loop through Hashes. Loop through our `responses`
#    hash, printing each Array to the screen.

responses.values.each do |i|
	i.each do |j|
		puts "\n\nProblem 7: #{j}"
	end
end


# 8. Finally, iterate over both the Hash and then Array of that key so
#    that you individually print out each value of the Array.

puts "\n\nProblem 8:"

