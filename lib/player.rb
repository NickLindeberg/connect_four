class Player
  attr_reader :player_move

  # def add_move_to_board
  #   if player_move = "A"
  #     board.
  #   else
  # end


  def player_move(move)
    if ("A".."G").include?(move.upcase)
      p "Thank You!"
    else
      p "Please choose one of the following letters ABCDEFG"
    end
  end


end
