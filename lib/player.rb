require "./lib/board.rb"
require 'pry'

class Player
  attr_reader :player_move

  def initialize
    @gameboard = Board.new
  end

  def player_move(move)
    if ("A".."G").include?(move.upcase)
      "\nThank You!"
    else
      "\nPlease choose one of the following letters ABCDEFG"
    end
  end

  def access_index(input)
    @gameboard.board_grid[input]
  end

  def piece_drop(number, access_index)
    


  end

end
