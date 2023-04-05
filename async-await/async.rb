require 'async'

# Instead of taking 3 seconds, this program takes 1 second in total.
# The main loop executes rapidly creating 3 child tasks, and then each
# child task sleeps for 1 second before printing "Hello World".

Async do
	3.times do |i|
		Async do
			sleep 1
			puts "Hello World #{i}"
		end
	end
end
