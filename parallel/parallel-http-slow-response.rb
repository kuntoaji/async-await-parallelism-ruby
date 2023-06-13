require 'parallel'
require 'open-uri'

uris = [
  'https://nghttp2.org/httpbin/delay/5',
  'https://nghttp2.org/httpbin/delay/3',
  'https://nghttp2.org/httpbin/delay/1'
]

puts "Start: #{Time.now}"

results = Parallel.map(uris, in_threads: 3) do |uri|
  puts "Before Request #{uri} - #{Time.now}"
  URI.open uri
  puts "After Request #{uri} - #{Time.now}"
end

puts "End: #{Time.now}"
