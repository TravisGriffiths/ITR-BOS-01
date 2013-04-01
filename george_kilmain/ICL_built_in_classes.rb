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

#puts Time.now

# 2. Run it again! What changed?
#
# You can tell that the seconds changed.


# 3. Although neat, that output looks pretty ugly... What if you run
#    Time.now.day or Time.now.month?

#puts Time.now.day
#puts Time.now.month
# 4. Take a look at `strftime`:
#    http://www.ruby-doc.org/docs/ProgrammingRuby/html/ref_c_time.html#Time.strftime
#
#    Construct a String using `strftime` so that the date prints out like:
#    Tuesday, September 19, 1985 at 09:15AM

#t = Time.new
#puts t.strftime("%A %B %d %Y  at %I %M %p")

# 5. Create a method that takes the optional arguments: :day_of_week, :month, :day, :year, :time
# By default i.e. if no argument is passed, the full: Tuesday, September 19, 1985 at 09:15AM format
# is returned as a string i.e. NOT printed. Otherwise only the parts pertaining to the corrisponding
# symbols are included in the return string.

def opt_time_args(*args)

if args.length > 0
	puts "#{args[0]} #{args[1]} #{args[2]} #{args[3]} #{args[4]}"
else
	puts Time.now.strftime("%A %B %d %Y  at %I %M %p")

end

end

opt_time_args()
opt_time_args("Tuesday", "March", "26", "2013")