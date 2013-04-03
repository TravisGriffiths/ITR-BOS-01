#!/Users/jparshley/.rvm/rubies/ruby-1.9.3-p392/bin/ruby
require animal

class Tiger(food_type) < Animal

  def initialize(pet_name,zoo_keeper)
    @pet_name = 
    @zoo_keeper = 
    @food_type = food_type
  end
  
  def get_diet
    #Prints out the appropriate animal's (cat or tiger's) diet using the value of the  food_type instance variable
    puts "#{@food_type}"
  end
end

tigger = Tiger.new

tigger.get_diet