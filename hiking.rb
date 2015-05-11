require 'rubygems'
require 'json'
require 'forecast_io'

ForecastIO.configure do |configuration|
  configuration.api_key = 'put_key_here'
end

# get Charlotte temp
forecast = ForecastIO.forecast(35.2269, -80.8433)

clt = forecast.currently.temperature

def going_hiking(temp)
  if temp > 50
    puts "Great, lets go hiking. Temperature is currently #{temp}°F"
  elsif temp > 32
    puts "It is a little chilly today, wear a jacket! Temperature is currently #{temp}°F"
  elsif temp < 32
    puts "I advise against it! Going to be below freezing. Temperature is currently #{temp}°F"
  else
  end
end
  
puts going_hiking(clt)
