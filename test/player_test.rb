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

    expected = "ABCDEFG\n.......\n.......\n.......\n.......\n.......\nX......"
    assert_equal expected, play.piece_drop(6,0)
  end

  def test_if_additional_piece_can_be_added_same_row
    play = Player.new

    play.piece_drop(6,0)
    expected = "ABCDEFG\n.......\n.......\n.......\n.......\n.......\nXX....."
    assert_equal expected, play.piece_drop(6,1)
  end

  def test_if_pieces_can_stack
    play = Player.new

    play.piece_drop(6,0)
    play.piece_drop(5,0)
    play.piece_drop(4,0)
    play.piece_drop(3,0)
    play.piece_drop(2,0)
    expected = "ABCDEFG\nX......\nX......\nX......\nX......\nX......\nX......"
    assert_equal expected, play.piece_drop(1,0)
  end

end
