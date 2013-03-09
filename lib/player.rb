class Player
  attr_reader :points, :name
  def initialize(name)
    @name=name
    @points=0
  end
  def add_points(points)
    @points+=points
  end
  end