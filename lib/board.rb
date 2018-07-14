class Board
  attr_reader :board


  def initialize
    @board = {
      "row_1" => [".",".",".",".",".","."],
      "row_2" => [".",".",".",".",".","."],
      "row_3" => [".",".",".",".",".","."],
      "row_4" => [".",".",".",".",".","."],
      "row_5" => [".",".",".",".",".","."],
      "row_6" => [".",".",".",".",".","."]
    }
  end

  def print_board
    board.values.join("\n")
    

  end

  def add_piece_player

  end

  def add_piece_computer

  end


end
