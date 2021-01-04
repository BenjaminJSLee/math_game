require './Game'
require './Player'

player_1 = Player.new(1)
player_2 = Player.new(2)
game = Game.new(0, [player_1, player_2])

game.start_game