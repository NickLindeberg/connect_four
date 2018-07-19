require './lib/board.rb'
require './lib/player.rb'

board = Board.new
player = Player.new

puts "\u2015 Welcome to Connect Four! Please choose a letter A-G to start the game! \u2015"

loop do
puts player.make_selection
end
