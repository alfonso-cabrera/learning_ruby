require 'rubygems'
require 'json'
require 'forecast_io'

ForecastIO.configure do |configuration|
  configuration.api_key = 'd05e5f4c1744a7fb02dfc4dcb72febdc'
end

forecast = ForecastIO.forecast(35.2269, -80.8433)
#puts "The forecast for today is #{forecast}"
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
  
#puts "What is the temp?"
#current_temp = gets.chomp.to_i

#puts going_hiking(current_temp)