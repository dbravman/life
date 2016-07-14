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
        row << Cell.new(x,y)
      end
      board << row
    end
  end
end