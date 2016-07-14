require_relative "cell"

class Board
  attr_accessor :length, :width, :board

  def initialize(length = 10, width = 10)
    @length = length
    @width = width
    @board = []
    initialize_cells
    board.each { |cell| initialize_neighbors(cell) }
  end

  def initialize_cells
    count = 0
    width.times do |y|
      length.times do |x|
        board << Cell.new(x,y,count)
        count += 1
      end
    end
  end

  def initialize_neighbors(cell)
    neighbors = []
    # dry this with yield
    if cell.x != 0
      neighbors << board[cell.index-1]
    end 

    if cell.x != width-1
      neighbors << board[cell.index+1]
    end

    if cell.y != 0
      neighbors << board[cell.index-width]
    end    

    if cell.y != length-1
      neighbors << board[cell.index+width]
    end

    if cell.x != 0 && cell.y != 0
      neighbors << board[cell.index-width-1]
    end

    if cell.x != 0 && cell.y != length-1
      neighbors << board[cell.index+width-1]
    end

    if cell.x != width-1 && cell.y != length-1
      neighbors << board[cell.index+width+1]
    end

    if cell.x != width-1 && cell.y != 0
      neighbors << board[cell.index-width+1]
    end

    cell.neighbors = neighbors
  end
end