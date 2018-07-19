require "minitest/autorun"
require "minitest/pride"
require "./lib/connect_four.rb"

class ConnectFourTest <Minitest::Test

  def test_runner_exists
    cf = ConnectFour.new

    assert_instance_of ConnectFour, cf
  end

end
