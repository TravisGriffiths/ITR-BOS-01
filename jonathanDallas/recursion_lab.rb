#!/Users/travisgriffiths/.rvm/rubies/ruby-1.9.3-p327/bin/ruby

	################################################################################
	# Recursion Lab: create a single methdod is_palindrome? which takes a string
	# and returns true if the string is a palindrome, and false otherwise. Notice
	# that the method is started for you in order to force a recursive solution
	################################################################################

	def is_palindrome?(candidate_string)
		unless candidate_string.is_a? Array
			candidate_char_array = candidate_string.split('')
		else
			candidate_char_array = candidate_string
		end
		#Fill in the rest such that this method returns true for palindromes and false otherwise
		if candidate_char_array.length <= 1
			return true
		end

		if(candidate_char_array[0] == candidate_char_array[-1])
			# remove the first and last characters
			return is_palindrome?(candidate_char_array.slice(1,candidate_char_array.length-2))
		else
			return false
		end
	end


	puts "minenim: #{is_palindrome?('minenim')}"
	puts "frank: #{is_palindrome?('frank')}"
