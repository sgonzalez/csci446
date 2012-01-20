#Professor Bakos,
# I decided to redo much of the code, it was too complex and convoluted
# I hope it is ok to do other functions

class Player
  def initialize
    @health = 0
    @nostop = false
  end

  def play_turn(warrior)
    @nostop = true if warrior.health >= 20
    if warrior.health < 20 && warrior.health >= @health
      warrior.rest!
      @warrior = false
    elsif warrior.health < @health && warrior.feel.empty? && !@warrior
      warrior.walk! :backward
    elsif warrior.feel.wall?
      warrior.pivot!
    else
      walk(warrior)
    end
    @health = warrior.health
  end

  def walk(warrior)
    if warrior.feel.empty?
      warrior.walk!
    elsif warrior.feel.captive?
      warrior.rescue!
    else
      warrior.attack!
    end
  end
end