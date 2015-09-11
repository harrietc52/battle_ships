require_relative 'ship.rb'

class Board

  attr_reader :ships

  def initialize(length)
    @length = length
    @ships = []
  end

  def place_ship(ship)
    fail "Ship cannot be placed out of boundary." unless in_bounds?(ship)
    fail "Ship cannot be placed overlappig with another ship." if overlapped?(ship)
    @ships << ship
  end

  def fire(coordinates)
    @ships.each do |ship|
      if ship.fire(coordinates)
        @ships.delete(ship)
      return "Boom!"
      end
    end
    "Miss"
  end

  private

  def in_bounds?(ship)
    ship.position.flatten.each do |i|
      if i > (@length - 1)
        return false
      end
      true
    end
  end

  def overlapped?(ship1)
    @ships.each do |ship|
      if (ship.position & ship1.position).any?
        return true
      end
    end
      false
  end
end
