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

#print "#{Time.now}"

# 2. Run it again! What changed?
#
# You can tell that the seconds changed.


# 3. Although neat, that output looks pretty ugly... What if you run
#    Time.now.day or Time.now.month?

#print "#{Time.now.day}"
#print "#{Time.now.month}"

# 4. Take a look at `strftime`:
#    http://www.ruby-doc.org/docs/ProgrammingRuby/html/ref_c_time.html#Time.strftime
#
#    Construct a String using `strftime` so that the date prints out like:
#    Tuesday, September 19, 1985 at 09:15AM


print Time.now.strftime("%A, %B %d, %Y at %I:%M%p")



# 5. Create a method that takes the optional arguments: :day_of_week, :month, :day, :year, :time
# By default i.e. if no argument is passed, the full: Tuesday, September 19, 1985 at 09:15AM format
# is returned as a string i.e. NOT printed. Otherwise only the parts pertaining to the corrisponding
# symbols are included in the return string.


def show_time(:day_of_week, :month, :day, :year, :time)
	if (show_time.has_value?(:day_of_week) == true || show_time.has_value?(:month) == true || show_time.has_value?(:day) == true || show_time.has_value?(:year) == true || show_time.has_value?(:time) == true)
		if(show_time.has_value?(:day_of_week) == true)
			print "#{show_time.index(:day_of_week)}"
		else
			print "Time.now.strftime("%d")"
		end
		if(show_time.has_value?(:month) == true)
			print "#{show_time.index(:month)}"
		else
			print "Time.now.strftime("%B")"
		end
		if(show_time.has_value?(:day) == true)
			print "#{show_time.index(:day)}"
		else
			print "Time.now.strftime("%d")"
		end
		if(show_time.has_value?(:year) == true)
			print "#{show_time.index(:year)}"
		else
			print "Time.now.strftime("%Y")"
		end
		if(show_time.has_value?(:time) == true)
			print "#{show_time.index(:time)}"
		else
			print "Time.now.strftime("%I:%M")"
		end

	else
	return Time.now.strftime("%A, %B %d, %Y at %I:%M%p")
	end
end

show_time("Sunday", "May")


