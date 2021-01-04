class Player
  attr_accessor :lives
  attr_reader :id

  def initialize(id)
    @id = id
    self.lives = 3
  end

  def lose_lives(lives)
    self.lives -= lives
    self.lives > 0
  end

end