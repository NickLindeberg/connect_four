require "minitest/autorun"
require "minitest/pride"
require "./lib/player.rb"
require "./lib/board.rb"

class PlayerTest <Minitest::Test

  def test_runner_exists
    play = Player.new

    assert_instance_of Player, play
  end

  def test_if_player_can_choose_column
    play = Player.new
    expected = "\nThank You!"
    actual = play.player_move("B")

    assert_equal expected, actual
  end

  def test_if_method_will_upcase_input
    play = Player.new
    expected = "\nThank You!"
    actual = play.player_move("a")

    assert_equal expected, actual
  end

  def test_if_incorrect_input_rejected
    play = Player.new
    expected = "\nPlease choose one of the following letters ABCDEFG"
    actual = play.player_move("z")

    assert_equal expected, actual
  end

  def test_if_index_accessible
    play = Player.new

    assert_equal 0, play.access_index("A")
  end

  def test_if_game_piece_added
    play = Player.new

    expected = "X"
    play.piece_drop(6,0)
    play.piece_drop(6,0)

    assert_equal expected, play.piece_drop(6,0)
  end

end
