class Player
@lastHealth = nil
  def play_turn(warrior)
  	@lastHealth = warrior.health unless @lastHealth
    if warrior.feel.empty?
      if warrior.health < @lastHealth
        warrior.walk!
      elsif warrior.health < 15
      	warrior.rest!
      else
        warrior.walk!
      end
    elsif warrior.feel.captive?
    	warrior.rescue!
    else
      warrior.attack!
    end
    @lastHealth = warrior.health
  end
end
