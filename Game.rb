class Game
  attr_accessor :turn, :players

  def initialize(turn, players)
    self.turn = turn
    self.players = players
  end

  def question(a, b)
    player = self.players[self.turn]
    puts "Player #{player.id}: What does #{a} plus #{b} equal?"
    answer = gets.chomp
    if answer.to_i == (a + b)
      puts "Player #{player.id}: YES! You are correct."
      return true
    else
      puts "Player #{player.id}: Seriously? No!"
      return player.lose_lives(1)
    end
  end
  
  def next_turn(verbose)
    if self.players.length === 0
      return false
    end
    self.turn = (self.turn + 1) % self.players.length
    if verbose
      puts "----- NEXT TURN -----"
    end
    return true
  end

  def display_lives
    vs_string = ""
    for i in 0..players.length - 1 do 
      player = players[i]
      vs_string += "P#{player.id}: #{player.lives}/3#{ i == players.length - 1 ? "" : " vs " }"
    end
    puts vs_string
  end

  def start_game
    while self.question(rand(1..20), rand(1..20))
      self.display_lives
      self.next_turn(true)
    end
    self.next_turn(false)
    winner = self.players[self.turn]
    puts "----- GAME OVER -----"
    puts "Player #{winner.id} wins with a score of #{winner.lives}/3"
    puts "Good bye!"
  end

  def end_game

  end

end