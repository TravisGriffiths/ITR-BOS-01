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


# 2. Run it again! What changed?
#
# You can tell that the seconds changed.


# 3. Although neat, that output looks pretty ugly... What if you run
#    Time.now.day or Time.now.month?



# 4. Take a look at `strftime`:
#    http://www.ruby-doc.org/docs/ProgrammingRuby/html/ref_c_time.html#Time.strftime
#
#    Construct a String using `strftime` so that the date prints out like:
#    Tuesday, September 19, 1985 at 09:15AM


# 5. Create a method that takes the optional arguments: :day_of_week, :month, :day, :year, :time
# By default i.e. if no argument is passed, the full: Tuesday, September 19, 1985 at 09:15AM format
# is returned as a string i.e. NOT printed. Otherwise only the parts pertaining to the corrisponding
# symbols are included in the return string.

def display_time (*args)
  t = Time.now
  format = ""
  def add_comma(format, chars)
    if format == ""
      return chars
    else
      return format + ", " + chars
    end
  end

  if !args
    puts t.strftime("%A, %B, %d, %Y at %I:%M%p")
  else
    if args.include?(:day_of_week)
      format = add_comma(format, "%A")
    end
    if args.include?(:month)
      format = add_comma(format, "%B")
    end
    if args.include?(:day)
      format = add_comma(format, "%d")
    end
    if args.include?(:year)
      format = add_comma(format, "%Y")
    end
    if args.include?(:time)
      format = add_comma(format, "at %I:%M%p")
    end
    puts t.strftime(format)
  end
end

display_time(:day_of_week)
display_time(:day_of_week, :month)
display_time(:day_of_week, :month, :day)
display_time(:day_of_week, :month, :day, :year)
display_time(:day_of_week, :month, :day, :year, :time)
display_time(:day_of_week, :day, :time)