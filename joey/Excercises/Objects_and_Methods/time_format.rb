#!/Users/travisgriffiths/.rvm/rubies/ruby-1.9.3-p327/bin/ruby


def get_formatted_time(*args)
	current_time = Time.now
	puts "Args include day_of_the_week: #{args.include?(:day_of_the_week)}"
	if not args.empty?
		format_string = ""
		format_string += "%a, " if args.include? :day_of_the_week
		format_string += "%B " if args.include? :month
		format_string += "%d, " if args.include? :day
		format_string += "%Y " if args.include? :year
		format_string += "at %I:%M %p" if args.include? :time
	else
		format_string = "%a, %B %d, %Y at %I:%M %p"
	end
	current_time.strftime(format_string)
end

puts "Current Time is: #{get_formatted_time(:time, :month, :day)}"