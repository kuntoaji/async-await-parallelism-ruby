require 'parallel'

# Define an array of values for parallel processing
values = [1, 2, 3, 4, 5]

puts "Time: #{Time.now}"

# Use the Parallel gem to process the array concurrently using multiple threads
results = Parallel.map(values, in_threads: 5) do |value|
  puts "Processing value #{value} in thread #{Thread.current.object_id}. Time: #{Time.now}"

  # Simulate a CPU-bound operation
  sleep(3)
  "Result of value #{value}"
end

puts "Parallel processing results: #{results}"
puts "Time: #{Time.now}"
