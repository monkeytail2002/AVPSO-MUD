class Dice

  #Dice roller that allows for multiple dice and varying die sizes.
  def roll(sides, number=1)
    roll_array = []  #Empty array
    number.times do #takes the amount of dice and multiplies the random number by that amount
      roll_value = rand(sides) + 1  #Random generator that takes in the amount of sides
      roll_array << roll_value  #Feeds the random number into the array
    end
    total = 0 #initialises the total variable
    roll_array.each do |roll|
      new_total = total + roll  #takes the total and adds the roll object
      total = new_total #returns the new total as the total variable
    end
    total
  end
end

#instantiates the dice class
dice_roll = Dice.new
dice_rolled = dice_roll.roll(20,2)  #calls the roll method and sets it to a variable
puts dice_rolled #displays the results.



