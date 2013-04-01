#!/Users/jparshley/.rvm/rubies/ruby-1.9.3-p392/bin/ruby
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
puts "++++++++++++++++++++++++++++++"
puts "The time now is: #{Time.now}"
puts
# 2. Run it again! What changed?
#
# You can tell that the seconds changed.


# 3. Although neat, that output looks pretty ugly... What if you run
#    Time.now.day or Time.now.month?
puts "++++++++++++++++++++++++++++++"
puts "The time now is: #{Time.now.day}"
puts "The time now is: #{Time.now.month}"
puts


# 4. Take a look at `strftime`:
#    http://www.ruby-doc.org/docs/ProgrammingRuby/html/ref_c_time.html#Time.strftime
#
#    Construct a String using `strftime` so that the date prints out like:
#    Tuesday, September 19, 1985 at 09:15AM
puts "++++++++++++++++++++++++++++++"
t = Time.now
puts t.strftime("%A, %B %d, %Y at %H:%M%p")
puts
# 5. Create a method that takes the optional arguments: :day_of_week, :month, :day, :year, :time
# By default i.e. if no argument is passed, the full: Tuesday, September 19, 1985 at 09:15AM format
# is returned as a string i.e. NOT printed. Otherwise only the parts pertaining to the corrisponding
# symbols are included in the return string.
puts "++++++++++++++++++++++++++++++"
def format_date(*time)
  t = Time.now
  format_string = ''
  if (time.length == 0)
    format_string += '%A, %B %d, %Y at %H:%M%p'
  else
    # show the formats
    if(time.include?:day_of_week)
      format_string += '%A, '
    end
    if(time.include?:month)
      format_string += '%B '
    end
    if(time.include?:day)
      format_string += '%d, '
    end
    if(time.include?:year)
      format_string += '%Y '
    end
    if(time.include?:time)
      format_string += 'at %H:%M%p'
    end
    
  end
  t.strftime("#{format_string}")
end

puts format_date(:day_of_week,:month,:day,:year,:time)
puts
