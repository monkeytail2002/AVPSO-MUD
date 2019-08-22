require './damage'
require './dice'


class Combat
  attr_accessor :damage

  def initialize
    @damage = Damage.new
    @dice = Dice.new
  end

  def fight
    #calls in the Google api
    session = GoogleDrive::Session.from_service_account_key("../client_secret.json")
    spreadsheet = session.spreadsheet_by_title("Rooms") #Grabs the spreadsheet
    mob_sheet = spreadsheet.worksheet_by_title("Mobs") #grabs the worksheet
    mob_ac = mob_sheet["B2"].to_i  #grabs the value from the spreadsheet as an integer
    mob_hp = mob_sheet["C2"].to_i
    player_damage = @damage.damage #takes the damage roll from the damage method
    player_to_hit = @dice.roll(20,  1) #sets the to hit roll as a d20 roll
    #This if statement checks if the to hit roll works and deals damage
    if player_to_hit <= mob_ac then new_mob_hp = mob_hp elsif player_to_hit >= mob_ac then new_mob_hp = mob_hp - player_damage
    end
    puts "Roll to hit: " + player_to_hit.to_s
    puts "Damage dealt: " + player_damage.to_s
    puts "Opponent has " + new_mob_hp.to_s + " left in health."
  end
end

test_fight = Combat.new
mob_fight = test_fight.fight