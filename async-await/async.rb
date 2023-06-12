require 'async'

puts "Start: #{Time.now}"

Async do
  3.times do |i|
    Async do |task|
      task.sleep 5
      puts "Hello World #{i} - #{Time.now}"
    end
  end
end

puts "End: #{Time.now}"
