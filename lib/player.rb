class Player

DEFAULT_HIT_POINTS = 100
attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def receives_attack
    @hit_points -= 10
  end

  def attack(player)
    player.receives_attack
  end
end