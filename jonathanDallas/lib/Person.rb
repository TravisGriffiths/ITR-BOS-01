class Person
	def initialize(fname, lname)
		@first_name = fname.to_s
		@last_name = lname.to_s
	end

	def get_full_name
		@first_name + " " + @last_name
	end

end
