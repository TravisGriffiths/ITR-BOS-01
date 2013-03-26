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

# 2. Now that you have created your basic Hash, go and add the negative
#    and neutral responses as well by creating new keys.



# 3. Finally, we can now play around with our Hash and Arrays to find
#    out some information about them.
#
#    Check to see if the Hash has the key `:positive`



# 4. Check to see if it has the key `:cruel`



# 5. Play around with more options by looking at the RubyDoc info:
#    http://www.ruby-doc.org/core-1.9.3/Hash.html 

responses = {:positive => [
"It is certain",
"It is decidedly so",
"Without a doubt",
"Yes - definitely",
"You may rely on it",
"As I see it, yes",
"Most likely",
"Outlook good",
"Yes",
"Signs point to yes"
]
}

puts responses[:positive]
puts ""

responses [:neutral] = [
	"Reply hazy, try again",
	"Ask again later",
	"Better not tell you now",
	"Cannot predict now",
	"Concentrate and ask againsomething"
]

puts responses[:neutral]
puts ""

responses[:negative] = [
	"Don't count on it",
	"My reply is no",
	"My sources say no",
	"Outlook not so good",
	"Very doubtful"
]

puts responses[:negative]
puts ""

if (responses.has_key?(:positive))
	puts "\nDon't worry there are positive responses"
end

if (!responses.has_key?(:cruel))
	puts "And we haven't created any cruel responses"
end

indexes = [:positive,:neutral,:negative]
puts ""
puts "Here's your answer"
puts responses[indexes[rand(0..2)]][rand(0..responses.size)]