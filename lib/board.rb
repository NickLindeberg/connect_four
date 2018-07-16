require "pry"

class Board
  attr_reader :board,
              :board_grid,
              :change_array_to_string,
              :seperate_into_lines,
              :print_board

  def initialize
    @board = [
    ["A","B","C","D","E","F","G"],
    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."]
  ]
    @board_grid = {"A" => 0,
                   "B" => 1,
                   "C" => 2,
                   "D" => 3,
                   "E" => 4,
                   "F" => 5,
                   "G" => 6
                 }
  end


  #Joins the arrays for each row into one string
  def change_array_to_string
    board.join
  end

  #Takes string and seperates into seperate lines.
  def seperate_into_lines(string)
    string.scan(/......./).join("\n")
  end

  def print_board
    changed_board = change_array_to_string
    seperate_into_lines(changed_board)
  end




end
