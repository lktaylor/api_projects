require 'open-uri'
require 'json'
require 'forecast_io'

# If you experience an error relating to SSL,
#   uncomment the following two lines:

require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

puts "Let's get the weather forecast for your address."

puts "What is the address you would like to know the weather for?"
the_address = gets.chomp
url_safe_address = URI.encode(the_address)

# Your code goes below.

ForecastIO.api_key = '1a18cf7e615cf03b381a4dafaaaffd78'
ForecastIO.forecast(latitude, longitude, options = {jsonp})

url = "https://api.forecast.io/forecast/1a18cf7e615cf03b381a4dafaaaffd78/#{url_safe_address}"
raw_data = open(url).read
parsed_data = JSON.parse(raw_data)
latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]
longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]
forecast = ForecastIO.forecast(41.78, -87.59)

# 'the_latitude' = '41.78'
# 'the_longitude' = '-87.59'
# 'the_address' = '5708 S Woodlawn Ave'
# 'the_temperature' = #{url_safe_address}

# Ultimately, we want the following line to work when uncommented:

puts "The current temperature at #{the_address} is #{the_temperature} degrees."
puts "The outlook for the next hour is: #{the_hour_outlook}"
puts "The outlook for the next day is: #{the_day_outlook}"
