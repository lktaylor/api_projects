require 'open-uri'
require 'json'

# If you experience an error relating to SSL,
#   uncomment the following two lines:

require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

puts "Let's get the weather forecast for your location."

puts "What is the latitude?"
the_latitude = gets.chomp

puts "What is the longitude?"
the_longitude = gets.chomp

# Your code goes below. Use the same approach as you did in
#   address_to_coords.rb to read from a remote API and parse
#   the results.

url = "http://maps.googleapis.com/maps/api/geocode/json?address=#{url_safe_address}"
raw_data = open(url).read
parsed_data = JSON.parse(raw_data)
the_latitude = parsed_data["results"][0]["geometry"]["location"]["latitude"]
the_longitude = parsed_data["results"][0]["geometry"]["location"]["longitude"]
Url

ForecastIO.api_key = '1a18cf7e615cf03b381a4dafaaaffd78'
ForecastIO.forecast(latitude, longitude, options = {jsonp})
url = "http://api.forecast.io/forecast/1a18cf7e615cf03b381a4dafaaaffd78/LATITUDE,LONGITUDE,TIME"
'the_latitude' = '41.7896234'
'the_longitude' = '-87.5964137'
'the_address' = '5708 S Woodlawn Ave'

# Ultimately, we want the following line to work when uncommented:

puts "The current temperature at #{the_latitude}, #{the_longitude} is #{the_temperature} degrees."
puts "The outlook for the next hour is: #{the_hour_outlook}"
puts "The outlook for the next day is: #{the_day_outlook}"
