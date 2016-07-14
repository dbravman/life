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
      width.times do |y|
        board << Cell.new(x,y)
      end
    end
  end
end