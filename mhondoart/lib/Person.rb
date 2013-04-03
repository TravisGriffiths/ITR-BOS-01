class Person
	attr_accessor :first_name, :last_name
	def initialize (first, last)
		@first_name = first
		@last_name = last
	end
	def get_full_name()
		full_name = @first_name + " " + @last_name
		return (full_name)
	end
end
