#!/Users/travisgriffiths/.rvm/rubies/ruby-1.9.3-p327/bin/ruby
################################################################################
#
# Introduction to Ruby on Rails
#
# Code Along Methods
#
################################################################################
#
# Below are variables that we will use in this exercise.
#
################################################################################ 


# 1. Write a method which accepts a province code and returns the province name. Ask the user to input a code
# then display the result of passing the input to your method. If the hash does not include the province code
# they provide, let the user know their input is invalid. Challenges in this exercise include: how to access 
# the provinces hash from within your method, and how to return the hash key (province name) by using its 
# value (province code). You may want to explore built-in Hash class methods including .has_value? .invert and .fetch. 
puts "\n--------------------" # line to distinguish exercise output
def get_province(province_code)

provinces = {
        "Australian Capital Territory" => "ACT",
        "New South Wales" => "NSW",
        "Northern Territory" => "NT",
        "Queensland" => "QLD",
        "South Australia" => "SA",
        "Tasmania" => "TAS",
        "Victoria" => "VIC",
        "Western Australia" => "WA"
      }

  puts "Province code is #{province_code}"
  #puts "provinces are #{provinces.invert}"
  if provinces.values.include? province_code
    puts "The province is: #{provinces.invert[province_code]}"
  else
    puts "That input is an invalid province code!"
  end
end

# puts "Please input a province: "

# capture = gets.chomp
# capture = capture.upcase

# get_province(capture)
# 2. Write a method which accepts any number of parameters representing months, by number 1 ("January") through 
# 12 ("December"), and displays the corresponding month names in a single line. Be aware of variable scope, and 
# that arrays begin with zero, not one.
puts "\n--------------------" # line to distinguish exercise output


def get_month(*args)
  months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  result = ""
  args.each do |i|
    i = i.to_i
    if(i <= 12 && i >0)
      result += months[i-1] + " "
    else
      result += "(#{i} is not a month) "
    end
  end

  result
end



puts get_month("1", "2", "20")