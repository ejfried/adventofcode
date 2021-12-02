class SonarSweep
  class << self
    def call(depth_measurements:, window_size:)
      counter = 0
      depth_measurements.each_cons(window_size).each_cons(2) do |prev, curr|
        counter += 1 if curr.sum > prev.sum
      end
      counter
    end
  end
end
