class Board
  attr_reader :board

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

  def print_board
    board.values.join
  end

  def seperate_into_lines(string)
    string.scan(/......./).join("\n")

  end

end
