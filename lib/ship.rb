class Ship

  attr_reader :size
  attr_writer :hits

  def initialize(size=1)
    @size = size
    @hits = 0
  end

  def struck
    @hits += 1
    true
  end

  def missed
    @hits += 1
    false
  end

  def floating?
    @size != @hits
  end

  def sunk
    @size == @hits
  end


  def self.patrol_boat
    new 2
  end

  def self.destroyer
    new 3
  end

  def self.submarine
    new 3
  end

  def self.battleship
    new 4
  end

  def self.aircraft_carrier
    new 5
  end

end
