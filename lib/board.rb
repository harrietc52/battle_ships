class Board

  attr_reader :water

  attr_accessor :content, :shot

  def initialize
    @grid = grid
    @content = water
    @shot = false
  end

  def grid
    @grid = Array.new(10){Array.new(10)}
    # @grid = Array({:a => "a", :b => "b"})
  end

  def place_ship(ship,x,y, direction)
    @grid[x][y] = 'x'
    self.content = ship

  end

  def shoot!
    self.shot = true
    content.struck
    @content != water
  end

  def shot?
    @shot
  end


end
