class Board

  attr_reader :grid

  def initialize
     @grid = new_game
  end

  def new_game
    @grid = [[0,0,0],
             [0,0,0],
             [0,0,0]]
  end

  def place_ship(x, y)
    @grid[x-1][y-1] = 'X'
    grid
  end

end
