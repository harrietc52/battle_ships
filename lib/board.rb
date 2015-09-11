require_relative 'ship.rb'

class Board

  def initialize(length)
    @length = length
  end


  def place_ship(ship, origin, direction)
    fail "Ship cannot be placed out of boundary." unless in_bounds?(ship)
  end

  # def shoot!
  #   self.shot = true
  #   content.struck
  #   @content != water
  # end

  private

  def in_bounds?(ship)
    ship.position.flatten.each do |i|
      if i > (@length - 1)
        return false
      end
      true
    end
  end

  def overlapped?
  end

end
