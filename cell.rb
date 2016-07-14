class Cell
  attr_accessor :x, :y, :index, :alive, :neighbors
  def initialize(x,y,index)
    @x = x
    @y = y
    @index = index
    @alive = false
  end
end