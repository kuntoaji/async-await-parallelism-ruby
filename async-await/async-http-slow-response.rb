require 'async'
require 'open-uri'

uri = 'https://nghttp2.org/httpbin/delay/5'
puts "Start: #{Time.now}"

Async do
  3.times do |i|
    Async do
      puts "Before Request #{i} - #{Time.now}"
      URI.open uri
      puts "After Request #{i} - #{Time.now}"
    end
  end
end

puts "End: #{Time.now}"
