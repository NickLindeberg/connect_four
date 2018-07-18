require 'pry'

class Player
  attr_reader :player_move,
              :piece_drop,
              :gameboard,
              :choose_column,
              :get_input,
              :piece

  def initialize
    @gameboard = Board.new
    @turn = 0


  end

    def piece
      if @turn.even?
         "X"
      else
         "O"
      end
    end


  def make_selection
    if @turn.even?
      input = get_input
      letter_valid = player_move(input)
      row_column_chosen = piece_drop(letter_valid)
      @turn += 1
    return row_column_chosen
    else
      @ai.comp_selection
  end

  def get_input
    gets.chomp
  end

  def player_move(move)
    if ("A".."G").include?(move.upcase)
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
            @gameboard.board[row].insert(column, piece)
            break
          end
        end
      return @gameboard.print_board
  end

end
