class Cell
  attr_accessor :x, :y, :alive

  def initialize(x,y)
    @x = x
    @y = y
    @alive = false
  end
end