class Board
  attr_reader :board,
              :change_array_to_string,
              :seperate_into_lines,
              :print_board

  def initialize
    @board = {
      "row_key"=> ["A","B","C","D","E","F","G"],
      "row_1"  => [".",".",".",".",".",".","."],
      "row_2"  => [".",".",".",".",".",".","."],
      "row_3"  => [".",".",".",".",".",".","."],
      "row_4"  => [".",".",".",".",".",".","."],
      "row_5"  => [".",".",".",".",".",".","."],
      "row_6"  => [".",".",".",".",".",".","."]
    }
  end


  #Joins the arrays for each row into one string
  def change_array_to_string
    board.values.join
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
