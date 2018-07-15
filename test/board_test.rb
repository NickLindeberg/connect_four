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
    expected = [".",".",".",".",".",".","."]

    assert_equal expected, bd.board["row_1"]
    assert_equal expected, bd.board["row_6"]
  end

  def test_if_default_board_is_printed
    bd = Board.new
    expected = "ABCDEFG.........................................."

    assert_equal expected, bd.change_array_to_string
  end

  def test_if_default_board_is_printed_in_seperate_lines

    bd = Board.new
    expected = "ABCDEFG\n.......\n.......\n.......\n.......\n.......\n......."
    actual = bd.seperate_into_lines("ABCDEFG..........................................")
    assert_equal expected, actual
  end

end
