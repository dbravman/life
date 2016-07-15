class Cell
  attr_accessor :x, :y, :index, :alive, :neighbors, :count
  
  def initialize(x,y,index,life)
    @x = x
    @y = y
    @index = index
    @life = life
    @alive = false
  end

  def count_alive_neighbors
    @count = neighbors.count {|neighbor| neighbor.alive}
  end
end