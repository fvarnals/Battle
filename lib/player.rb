class Player

  def initialize(name, hp = 100)
    @name = name
    @hp = hp
  end

  def name
    @name
  end

  def health_points
    @hp
  end

  def reduce_HP
    @hp -= 10
  end

  def attack(player)
    player.reduce_HP
  end
end
