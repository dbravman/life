require_relative "cell_viewer"

module GameViewer
  def self.show(game)
    reset_screen
    game.board.each do |cell|
      CellViewer.show(cell)
      if cell.x == game.width-1
        print "\n"
      end
    end
  end 

  def self.reset_screen
    clear_screen
    move_to_home
  end

  # Clears the content on the screen. Ah, a fresh canvas.
  def self.clear_screen
    print "\e[2J"
  end

  # Moves the insert point in the terminal back to the upper left.
  def self.move_to_home
    print "\e[H"
  end
end