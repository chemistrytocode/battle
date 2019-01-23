class Game

  attr_reader :player_one, :player_two

  def initialize(player_one, player_two)
    @players = [player_one, player_two]
  end

  def player_one
    @players.first
  end

  def player_two
    @players.last
  end

  def attack(player)
    player.receive_damage
  end
end