class Player
  attr_reader :player_move

  def player_move(move)
    if (A..G).include?(move.upcase)
      p "Thank You!"
    else
      p "Please choose one of the following letters ABCDEFG"
    end
  end


end
