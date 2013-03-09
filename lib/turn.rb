class  Turn
  attr_reader :points
  def initialize(player)
    @player = player
    @points = 0
    @over = false
  end

  def over?
    @over
  end

  def roll(die)
     die.roll!
     if die.roll == 1
       @points=0
       @over=true
       else @points+=die.roll
     end
  end

  def hold
    @over = true
    @player.add_points(@points)
  end

end