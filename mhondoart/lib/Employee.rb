################################################################################
#
# Student's Solution:
#
################################################################################
class Employee
	attr_accessor :first_name, :last_name
	def initialize (first, last)
		@first_name = first
		@last_name = last
	end

	def full_name
		puts "#{first_name}" + " " + "#{last_name}"
	end
end 

class Manager < Employee
	attr_accessor :title
	def initialize (title, first, last)
		@title = title
		super(first, last)
	end

	def full_name
		puts "#{first_name}" + " " + "#{last_name}" + "(" + "#{title}" +")"
	end
end
