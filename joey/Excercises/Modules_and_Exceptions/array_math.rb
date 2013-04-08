#!/Users/travisgriffiths/.rvm/rubies/ruby-1.9.3-p327/bin/ruby

module ArrayMath

	################################################################################
	# Constants can be accessed via the :: operator, as in: ArrayMath::PI
	################################################################################
	PI = 3.1415


	################################################################################
	# Note that the method names include the module name with a '.'
	################################################################################
	def ArrayMath.sum(summing_array)
		total = 0 
		summing_array.each do |index|
			total += index.to_f
		end
		total
	end

	def ArrayMath.mean(averaging_array)
		################################################################################
		# Note that in this module, this method can refer to the other module methods simply by name
		################################################################################
		sum(averaging_array) / averaging_array.length
	end

	################################################################################
	# Recursion is a scary name for a simple concept, namely that any method may
	# call ITSELF. There are many reasons to do this, most often that the operation
	# is simple an atomic, but may be needed many times. It is very often used in 
	# interviews to guage computational ability, for better or worse.
	################################################################################

	# Factorials are a classic problem for using recursion, a factorial of a number 
	# defined as all of the integers in order before that number all multiplied together
	# For Example: 3! (3 factorial) is: 1 * 2 * 3 or 6
	# http://en.wikipedia.org/wiki/Factorial
	def ArrayMath.factorial(i)
		################################################################################
		# In plain English: The factorial of 1 is 1, the factorial of anything larger 
		# than 1 is the current number times the factorial of the number one less than
		# the current number.
		################################################################################
		if(i == 1)
			return 1 #This is the stop condition, i.e. as we keep reducing i, we will
					 # hit i == 1 eventually and return 1
		else 
			return i * factorial(i - 1)
		end
	end
	################################################################################
	# Walk through the simple case: factorial(1)
	# 1) i == 1 Therefore: 1 is returned -> CORRECT
	# 
	# Walk through next simplest case: factorial(2)
	# 1) i == 2 Therefore return 2 * factorial(1)
	# 2) i == 1 Therefore return 1
	# 3) Therefore 2 * factorial(1) == 2 * 1 = 2 -> CORRECT
	#
	# These multiple nested calls are called the recursion stack
	#
	# Search YouTube for 'Ruby Recursion' and similar terms for a ton of video tutorials
	#
	################################################################################

	def ArrayMath.factorial_array(fac_array) 
		fac_array.map { |i| factorial(i.to_i) }
	end


end
