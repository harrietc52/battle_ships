class Ship

  attr_reader :size
  attr_accessor :hits

  def initialize(size)
    @size = size
    @hits = 0

  end

  def floating?
    @size != @hits
  end

  def recieve_hit
    @hits +=1
  end

  def sunk
    @size == @hits
  end

end
