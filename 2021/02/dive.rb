class Dive
  attr_reader :x, :z

  def initialize
    @x = 0
    @z = 0
  end

  def call(command)
    args = command.split(" ")
    direction = args[0]
    distance = args[1].to_i

    case direction
    when "forward" then @x += distance
    when "up" then @z -= distance
    when "down" then @z += distance
    end
  end
end
