module CellViewer
  def self.show(cell)
    print cell.alive ? "X" : "."
  end
end