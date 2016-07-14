require_relative "cell_viewer"

module GameViewer
  def self.show(game)
    game.board.each do |cell|
      CellViewer.show(cell)
      if cell.y == game.width-1
        print "\n"
      end
    end
  end 
end