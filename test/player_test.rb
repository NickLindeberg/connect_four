require "minitest/autorun"
require "minitest/pride"
require "./lib/player.rb"

class PlayerTest <Minitest::Test

  def test_runner_exists
    cf = Player.new

    assert_instance_of Player, cf
  end




end
