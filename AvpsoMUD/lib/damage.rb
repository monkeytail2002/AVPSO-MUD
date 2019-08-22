require 'bundler'
Bundler.require
require './dice.rb'

class Damage
  attr_accessor :dice  #Getter for instance variable


  def initialize
    @dice = Dice.new #initializes the dice instance var to a new instantiation of the dice class
  end


  def damage
    #calls in the Google api
    session = GoogleDrive::Session.from_service_account_key("../client_secret.json")
    spreadsheet = session.spreadsheet_by_title("Rooms") #Grabs the spreadsheet
    dam_sheet = spreadsheet.worksheet_by_title("Items") #grabs the worksheet
    ram_dam =  dam_sheet["B2"].to_i #Sets dice size from the spreadsheet.  This will be made dynamic eventually
    ram_num = dam_sheet["C2"].to_i  #Sets number of dice to roll from the spreadsheet.  To be made dynamic
    dice_dam = @dice.roll(ram_dam, ram_num)  #returns the total number
  end


end

#poc for damage roller
test = Damage.new
test_d = test.damage
puts test_d
