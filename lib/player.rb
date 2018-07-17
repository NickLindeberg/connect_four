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

  def piece_drop(number, column)
    if @gameboard.board[6][column] == "."
      @gameboard.board[6].delete_at(column)
      @gameboard.board[6].insert(column, "X")

    elsif @gameboard.board[5][column] == "."
      @gameboard.board[5].delete_at(column)
      @gameboard.board[5].insert(column, "X")
# binding.pry
    elsif @gameboard.board[4][column] == "."
      @gameboard.board[4].delete_at(column)
      @gameboard.board[4].insert(column, "X")

    elsif @gameboard.board[3][column] == "."
      @gameboard.board[3].delete_at(column)
      @gameboard.board[3].insert(column, "X")

    elsif @gameboard.board[2][column] == "."
      @gameboard.board[2].delete_at(column)
      @gameboard.board[2].insert(column, "X")

    elsif @gameboard.board[1][column] == "."
      @gameboard.board[1].delete_at(column)
      @gameboard.board[1].insert(column, "X")

    else
      puts "sorry, column full!"
  end
  # break
    return @gameboard.print_board
  end
end
