################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise 4.1
#
################################################################################

# 1. A popular built-in object is Time:
#    http://www.ruby-doc.org/docs/ProgrammingRuby/html/ref_c_time.html
#
#    Back in Lesson 2 we asked our User to input a date or even today's
#    date.
#
#    We can make Ruby do all the hard work for us instead!
#
#    Print to the screen `Time.now` and see what prints.

puts Time.now

# 2. Run it again! What changed?
#
# You can tell that the seconds changed.

puts "yes"

# 3. Although neat, that output looks pretty ugly... What if you run
#    Time.now.day or Time.now.month?

puts Time.now.day
puts Time.now.month

# 4. Take a look at `strftime`:
#    http://www.ruby-doc.org/docs/ProgrammingRuby/html/ref_c_time.html#Time.strftime
#
#    Construct a String using `strftime` so that the date prints out like:
#    Tuesday, September 19, 1985 at 09:15AM

t = Time.now
puts t.strftime("%A, %B %d, %Y at %I:%M%p")


# 5. Create a method that takes the optional arguments: :day_of_week, :month, :day, :year, :time
# By default i.e. if no argument is passed, the full: Tuesday, September 19, 1985 at 09:15AM format
# is returned as a string i.e. NOT printed. Otherwise only the parts pertaining to the corrisponding
# symbols are included in the return string.

def custom_time (*arg)
	result = ""
	arg.each do |value|
		if(value == :day_of_week)
			result += "%A, "
		elsif(value == :month)
			result += "%B "
		elsif(value == :day)
			result += "%d, "
		elsif(value == :year)
			result += "%Y "
		elsif(value == :time)
			result += "at %I:%M%p" 
		end
	end
	t = Time.now
	t.strftime(result)
end

puts "Full date #{custom_time(:day_of_week, :month, :day, :year, :time)}"
puts "Time #{custom_time(:time)}"
puts "Day and Year  #{custom_time(:day_of_week, :year)}"