class    Game
  def initialize(players)
    @players=players
    @winner=nil
    end

  end

  def over?
    @players.each {|player| player>100}.any?
  end

  def winner
    if @winner=nil
    @winner = @players.max_by {|player| player.points}
    end
    @winner
end