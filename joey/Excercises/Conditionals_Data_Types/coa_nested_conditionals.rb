################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise 2.5
#
################################################################################
#
# Below are variables that we will use in this exercise.
#
################################################################################

programs_day_of_week = "tuesday"
programs_number = 3

# 1. Let's get input from our User and see if they can guess which day
#    of the week we are thinking of.
#
#    Ask the User, "What day of the week am I thinking of?" and capture
#    their input in the variable `guess`.
puts 
puts "What day of the week am I thinking of?"
guess = gets.chomp
puts
puts "#{guess}"
puts


# 2. By default, `programs_day_of_week` is set to Tuesday. Let's compare
#    our variable to what the User inputted. If they got it right, tell
#    them "Correct!" otherwise tell them "Wrong!"
if (guess.upcase == programs_day_of_week.upcase)
  puts "Correct!"
else
  puts "Wrong"
end
puts


# 3. Now let's try seeing if two things are true at the same time.
#
#    Ask your User for a day of the week and then for a number. Remember
#    to cast your User's input appropriately when comparing values!
#
#    Then use a conditional to see if both the number and the day of
#    week are correct. If both are correct, tell the User "Correct!"
#
#    If only the number is correct, tell them "Number Correct!"
#
#    If only the day of the week is correct, tell them "Day of week
#    Correct!"
#
#    Otherwise, tell them "Wrong!"
my_day = "monday"
my_number = 27
puts
puts "What day of the week am I thinking of now"
your_day = gets.chomp
puts
puts "Now pick a number"
your_number = gets.chomp.to_i

if(your_day.upcase == my_day.upcase) && (your_number == my_number)
  puts
  puts 'Correct!'
  puts
elsif(your_day.upcase == my_day.upcase) || (your_number == my_number)
  if(your_day.upcase == my_day.upcase)
    puts
    puts "Day of the week Correct!"
    puts
  else
    puts
    puts "Number correct"
    puts
  end
else
  puts
  puts "Wrong!"
  puts
end

# 4. One last time, ask again for a day of the week and a number, except
#    this time only one of them needs to be correct to "win"! But if
#    they don't guess either correctly, they "lose"!
my_day = "monday"
my_number = 27
puts
puts "What day of the week am I thinking of now"
your_day = gets.chomp
puts
puts "Now pick a number"
your_number = gets.chomp.to_i

if(your_day.upcase == my_day.upcase) || (your_number == my_number)
  puts 
  puts "Win!"
  puts
else
  puts
  puts "lose!"
  puts
end



