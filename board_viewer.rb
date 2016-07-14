require_relative "cell_viewer"

module BoardViewer
  def self.show(game)
    game.board.each do |cell|
      CellViewer.show(cell)
      if cell.y == game.width-1
        print "\n"
      end
    end
  end 
end