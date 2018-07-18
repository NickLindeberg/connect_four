require './lib/computer_player.rb'
require 'minitest/autorun'
require 'minitest/pride'

class ComputerPlayerTest < Minitest::Test

  def test_if_computer_exists
    ai = ComputerPlayer.new

    assert_instance_of ComputerPlayer, ai
  end

end
