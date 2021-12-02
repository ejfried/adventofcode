class SonarSweep
  class << self
    def call(depth_measurements:)
      counter = 0
      depth_measurements.each_cons(2) do |prev, curr|
        counter += 1 if curr > prev
      end
      counter
    end
  end
end
