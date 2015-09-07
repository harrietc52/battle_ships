class Ship

  attr_reader :size, :position

  def initialize(position)
    @hit = false
    @position = position
  end

  def hit?
    @hit
  end

  def hit
    @hit = true
  end

end
