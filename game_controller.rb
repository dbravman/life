require_relative "board"
require_relative "game_viewer"

module GameController
  def self.run(cycles, dim_x, dim_y)
    game = Board.new(dim_x, dim_y)
    cycles.times do
      game.tick
      GameViewer.show(game)
    end
  end
end