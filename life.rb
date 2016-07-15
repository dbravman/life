require_relative "game_controller"

cycles = ARGV[0].to_i #0 if not an integer
dim_x = ARGV[1].to_i
dim_y = ARGV[2].to_i

GameController.run(cycles, dim_x, dim_y)
