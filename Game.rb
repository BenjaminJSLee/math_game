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