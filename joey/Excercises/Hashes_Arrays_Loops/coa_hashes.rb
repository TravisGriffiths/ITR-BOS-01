################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise Hashes
#
#
################################################################################
 
# 1. create a hash named states comprised of three state names, including New York, and their abbreviations
states = {"New York" => "NY", "Massachusetts" => "MA", "Florida" => "FL"}
puts "\n========================="
puts states
puts "\n=========================" 
# 2. create second hash named request using url and ip as key names
request = {:url => "www.infinitemediainc.com", :ip => "101.101.101.111"}
puts "\n========================="
puts request
puts "\n========================="

# 3. display the url in the request hash
puts "\n========================="
puts request[:url]
puts "\n========================="

# 4. display the abbreviation for New York
puts "\n========================="
puts states["New York"]
# 5. display whether the states hash contains the abbreviation NY
puts "\n========================="
puts states.has_value?('NY')
puts "\n========================="

