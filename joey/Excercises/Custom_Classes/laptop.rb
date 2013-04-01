class Laptop
	attr_accessor :brand
	attr_accessor :screen_size
	attr_accessor :power
	def initialize(brand, screen_size)
		@brand = brand
		@screen_size = screen_size
		@power = false
	end
	def power?(state)
		@power = state
	end
	def display
		return "#{@brand} #{@screen_size} is on: #{@power}"
	end
end