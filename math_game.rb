class Game
  attr_reader :turn, :players

  def initialize(turn)
    self.turn = turn
    self.players = []
  end

  def next_turn
    if self.players.length === 0
      return false
    end
    self.turn = (self.turn % self.players.length) + 1
    return true
  end

end

class Player
  attr_accessor :lives
  attr_reader :id

  def initialize(id)
    self.id = id
    self.lives = 3
  end

  def lose_lives(lives)
    self.lives -= lives
    self.lives > 0
  end

end