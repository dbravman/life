require_relative "board"
require_relative "board_viewer"

game = Board.new

GameViewer.show(game)

50.times
  game.tick
end