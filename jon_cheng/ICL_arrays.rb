################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise ICL_arrays.rb
#
################################################################################

# 1. We are going to begin to create a "Magic 8-Ball" program!
#
#    Begin by creating a simple array called `responses` that hold these
#    three String values:
#
#    - "It is certain"
#    - "Reply hazy, try again"
#    - "Don't count on it"
responses = []
responses.push "It is certain"
responses.push "Reply hazy, try again"
responses.push "Don't count on it"

puts responses


# 2. Print to the screen, "Your answer is:" and print the second value
#    of the Array as well.

puts "Your answer is: #{responses[1]}"


# 3. Add three more values to your `responses` Array by using `push`.
#
#    - "It is decidedly so"
#    - "Ask again later"
#    - "My reply is no"
#
#    Print the entire array to the screen to see what your array
#    looks like.
responses.push "It is decidedly so"
responses.push " Ask again later"
responses.push "My reply is no"

puts responses

# 4. Remove the first value from your Array ("It is certain") using
#    shift and print your Array again. It should no longer
#    have that value!

responses.shift

puts responses

# 5. Add a new item to the front of your Array by using the `unshift`
#    method.
#
#    - "As I see it, yes"
#
#    And print your Array one more time to make sure it's correct!

responses.unshift "As I see it, yes"

puts responses