require "minitest/autorun"

require_relative "sonar_sweep"

class SonarSweepTest < MiniTest::Unit::TestCase
  def test_single_measurement
    assert_equal 0, SonarSweep.call(depth_measurements: [199])
  end

  def test_official_case
    measurements = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]

    assert_equal 7, SonarSweep.call(depth_measurements: measurements)
  end
end
