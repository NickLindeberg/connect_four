require 'pry'
require './lib/computer_player.rb'

class Player
  attr_reader :player_move,
              :piece_drop,
              :gameboard,
              :choose_column,
              :get_input,
              :piece,
              :check_for_row_win

  def initialize
    @gameboard = Board.new
    @turn = 0
    @ai = ComputerPlayer.new
  end

  def piece
    if @turn.even?
       "X"
    else
       "O"
    end
  end

  def get_input
    gets.chomp
  end

  def make_selection
    if @turn.even?
      input = get_input
      letter_valid = player_move(input)
      row_column_chosen = piece_drop(letter_valid)
      @turn += 1
    else @turn.odd?
      input_comp = @ai.comp_selection
      row_column_chosen = piece_drop(input_comp)
      @turn += 1
    end
    return row_column_chosen
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

  def check_for_row_win()
    rows = [6,5,4,3,2,1]
      rows.map do |row|
        if @gameboard.board[row].join.include?("XXXX")
          puts "Winner! Winner! Chicken! Dinner!"
        elsif @gameboard.board[row].join.include?("OOOO")
          puts "The machine wins again!"
        break
        end
      end
    make_selection
  end

  def check_for_column_win
    rows = [7,6,5,4,3,2,1]
      rows.map do |row|
        if @gameboard.flippedboard[row].join.include?("XXXX")
          puts "Winner! Winner! Chicken! Dinner!"
        elsif @gameboard.flippedboard[row].join.include?("OOOO")
          puts "The machine wins again"
          break
        end
      end
      make_selection
  end
    
end
