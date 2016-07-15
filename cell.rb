class Cell
  attr_accessor :x, :y, :index, :alive, :neighbors
  def initialize(x,y,index)
    @x = x
    @y = y
    @index = index
    @alive = false
  end

  def count_alive_neighbors
    @count = neighbors.count {|neighbor| neighbor.alive}
  end
end