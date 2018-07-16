require "./lib/board.rb"
require 'pry'

class Player
  attr_reader :player_move

  def initialize
    @board = Board.new
  end

  def player_move(move)
    if ("A".."G").include?(move.upcase)
      "\nThanks"
    else
      "\nPlease choose one of the following letters ABCDEFG"
    end
  end


  def add_move_to_board(input)
      if input == "A" do |letter|
        letter

      @board.print_board = "X"
  end









end
