################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise ICL_hashes
#
################################################################################

# 1. Continuing with our Magic 8-Ball, let's switch it up a bit. If you
#    are not aware of what a Magic 8-Ball is:
#    http://en.wikipedia.org/wiki/Magic_8-Ball
#
#    A Magic 8-Ball includes 20 answers, which can be construed as being
#    "positive", "negative" or "neutral".
#
#    Create a Hash called `responses` that has the key :positive that
#    includes all of the positive answers from the Wikipedia page as an
#    Array.
#
#    Print the Array to the screen.
#

responses = {positive: ["It is certain", "Without a doubt", "Definitely"], neutral: ["Reply hazy, try again", "Ask again later"], negative: ["Don't count on it", "My reply is no"]}

puts responses

# 2. Now that you have created your basic Hash, go and add the negative
#    and neutral responses as well by creating new keys.

responses[:secret] = ["This is a secret response!", "This is a second secret response!"]


# 3. Finally, we can now play around with our Hash and Arrays to find
#    out some information about them.
#
#    Check to see if the Hash has the key `:positive`

responses.has_key?(:positive)

# 4. Check to see if it has the key `:cruel`

responses.has_key?(:cruel)

# 5. Play around with more options by looking at the RubyDoc info:
#    http://www.ruby-doc.org/core-1.9.3/Hash.html 

# display an array of the keys
responses.keys

# display an array of the values
responses.values

