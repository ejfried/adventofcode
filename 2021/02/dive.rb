class Dive
  attr_reader :x, :z, :aim

  def initialize
    @x = 0
    @z = 0
    @aim = 0
  end

  def call(command)
    args = command.split(" ")
    direction = args[0]
    distance = args[1].to_i

    send(direction.to_sym, distance)
  end

  private

  def forward(distance)
    @x += distance
    @z += (aim * distance)
  end

  def up(distance)
    @aim -= distance
  end

  def down(distance)
    @aim += distance
  end
end
