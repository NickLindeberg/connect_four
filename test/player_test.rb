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
    expected = "Thank You!"
    actual = play.player_move("B")

    assert_equal expected, actual
  end

  def test_if_method_will_upcase_input
    play = Player.new
    expected = "Thank You!"
    actual = play.player_move("a")

    assert_equal expected, actual
  end

  def test_if_incorrect_input_rejected
    play = Player.new
    expected = "Please choose one of the following letters ABCDEFG"
    actual = play.player_move("Z")

    assert_equal expected, actual
  end
end
