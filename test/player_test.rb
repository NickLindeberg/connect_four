require "minitest/autorun"
require "minitest/pride"
require "./lib/player.rb"

class PlayerTest <Minitest::Test

  def test_runner_exists
    play = Player.new

    assert_instance_of Player, play
  end

  def test_if_player_can_choose_column
    play = Player.new

    assert_equal "Thanks for your guess", play.player_move("a")
  end


end
