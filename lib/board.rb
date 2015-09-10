class Board

  attr_accessor :content, :shot

  def initialize(content=water)
    @content = content
    @shot = false
  end

  def grid
    grid = Array.new(10){Array.new(10)}
  end

  def add_ship(ship)
    self.content = ship
  end

  def shoot!
    self.shot = true
    content.struck
    @content = 'ship'
  end

  def shot?
    @shot
  end

end
