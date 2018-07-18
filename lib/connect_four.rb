require './lib/board.rb'
require './lib/player.rb'
board = Board.new
player = Player.new

puts "\u2015 Welcome to Connect Four! Please choose a letter to start the game! \u2015"

puts player.make_selection
puts player.make_selection
