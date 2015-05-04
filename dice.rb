# Roll The Dice!
def roll_dice(roll)
  result = roll.sample
  
end
  
die1 = [1,2,3,4,5,6]
die2 = [1,2,3,4,5,6]
roll1 = roll_dice(die1)
roll2 = roll_dice(die2)

puts "First die returned: " + roll1.inspect
puts "Second die returned: " + roll2.inspect
total = roll1 + roll2
puts "Combined roll is: #{total}"