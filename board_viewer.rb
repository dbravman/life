require_relative "cell_viewer"

module BoardViewer
  def self.show(board)
    board.each do |row|
      row.each do |cell|
        CellViewer.show(cell)
      end
      print "\n"
    end
  end 
end