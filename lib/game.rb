class Game

  attr_reader :player_1, :player_2, :turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = 1
  end

  def attack(player)
    player.receives_attack
    player == player_1 ? @turn += 1 : @turn -= 1
  end

end