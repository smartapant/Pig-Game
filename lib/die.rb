class Die
  attr_reader :sides, :roll
  def roll!
    @roll=rand(1..6)
  end
end
