require 'pry'

class Player
  attr_reader :player_move,
              :piece_drop,
              :gameboard,
              :choose_column,
              :get_input

  def initialize
    @gameboard = Board.new
    @turn = 0
  end

  def get_input
    gets.chomp
  end

  # if turn is even?
    def piece_type
      if @turn.even
        "X"
      else
        "O"
      end
    end

  def choose_column(letter)
    number = (6)
    chosen_column = player_move(letter)
    row_column_chosen = piece_drop(chosen_column)
  end

  def player_move(move)
    if ("A".."G").include?(move.upcase)
      # "\nThank You!"
      access_index(move.upcase)
    else
      "\nPlease choose one of the following letters ABCDEFG"
    end
  end

  def access_index(input)
    @gameboard.board_grid[input]
  end

  def piece_drop(column)
      rows = [6,5,4,3,2,1]
      rows.map do |row|
        if  @gameboard.board[row][column] == "."
          @gameboard.board[row].delete_at(column)
          @gameboard.board[row].insert(column, "X")
          break
        elsif @gameboard.board[row][column] == "."
          @gameboard.board[row -= 1].delete_at(column)
          @gameboard.board[row -= 1].insert(column, "X")
        end
      end
    return @gameboard.print_board
  end

end
