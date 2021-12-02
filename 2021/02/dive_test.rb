require "minitest/autorun"

require_relative "dive"

class DiveTest < MiniTest::Unit::TestCase
  def test_official_case
    commands = [
      "forward 5",
      "down 5",
      "forward 8",
      "up 3",
      "down 8",
      "forward 2",
    ]

    submarine = Dive.new
    commands.each { |cmd| submarine.call(cmd) }

    assert_equal 15, submarine.x
    assert_equal 10, submarine.z
  end
end
