#!/usr/bin/ruby

# HASHES 

responses = {:positive => ["It is certain", "It is decidely so", "Without a doubt", "Yes - definitely", "You may rely on it", "As I See it, yes", "Most likely", "Outlook good", "Yes", "Signs point to yes"], :neutral => ["Rply hazy, try again", "Ask again later", "Better not tell you now", "cannot predict now", "concentrate and ask again"], :negative=>["Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very Doubtful"]}



while reponses[:negative].length > 4
puts responses