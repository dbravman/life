require_relative "cell"

class Board
  attr_accessor :length, :width, :board

  def initialize(length = 10, width = 10)
    @length = length
    @width = width
    @board = []
    initialize_cells
  end

  def initialize_cells
    length.times do |x|
      row = []
      width.times do |y|
        cell = Cell.new(x,y)
        assign_neighbors(cell)
        row << cell
      end
      board << row
    end
  end

  def assign_neighbors(cell)
    cell.neighbors = []
    possible 
    cell.neighbors << 
  end
end