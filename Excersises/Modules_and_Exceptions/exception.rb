a = [1, 2, 3]

begin
	a.fetch(2)
rescue IndexError => msg

	puts "Got Error: #{msg}" 
else
	puts "I only run if there are no errors"
ensure
	puts "I always run"

end