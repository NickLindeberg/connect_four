require "./lib/board.rb"
require 'pry'

class Player
  attr_reader :player_move,
              :piece_drop

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
    unless number 0
    if @gameboard.board[number][access_index] == "."
     @gameboard.board[number][access_index] = "X"
    else
      piece_drop(number -1, access_index)
    end

  end 
  break
  end
end
