
# require 'water'

class Ship
  include Hit

  attr_reader :position

  def initialize(position)
    @position = position
    @hit = false
  end


end
