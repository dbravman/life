class Cell
  attr_accessor :x, :y, :alive, :neighbors

  def initialize(x,y,board_length,board_width)
    @x = x
    @y = y
    @alive = false
  end
end