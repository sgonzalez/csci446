class Player
@lastHealth = nil
@hasRescued = false
  def play_turn(warrior)
  	@lastHealth = warrior.health unless @lastHealth
  	if !@hasRescued
  		if warrior.feel(:backward).wall?
  			@hasRescued = true
  			warrior.rest!
  		elsif warrior.feel(:backward).captive?
  			warrior.rescue!(:backward)
  		else
  			warrior.walk!(:backward)
  		end
    elsif warrior.feel.empty?
      if warrior.health < @lastHealth
        warrior.walk!
      elsif warrior.health < 20
      	#warrior.rest!
      	@hasRescued = false
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
