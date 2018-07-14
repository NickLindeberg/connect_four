require "minitest/autorun"
require "minitest/pride"
require "./lib/board.rb"

class BoardTest <Minitest::Test
    attr_accessor :print_board

  def test_board_exists
    bd = Board.new

    assert_instance_of Board, bd
  end

  def test_if_row_accessible
    bd = Board.new
    expected = [".",".",".",".",".","."]

    assert_equal expected, bd.board["row_1"]
    assert_equal expected, bd.board["row_6"]
  end

  def test_if_default_board_is_printed
    bd = Board.new
    expected = "......\n......\n......\n......\n......\n......"

    assert_equal expected, bd.board.print_board
  end

end
