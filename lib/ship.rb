class Ship

  attr_reader :size, :damage, :position

  def initialize(size, origin, direction)
    @size = size
    @origin = origin
    @position = []
    @damage = 0
    @direction = direction
    calculate_position
  end

  def sunk?
    @position.empty?
  end

  def fire(coordinates)
    if @position.include?(coordinates)
      @damage += 1
      @position.delete(coordinates)
      return true
    end
      false
  end

  private

  def calculate_position
    size.times do |i|
      case @direction
      when 'N'
        @position << [@origin[0], (@origin[1] + i)]
      when 'E'
        @position << [(@origin[0] + i), @origin[1]]
      when 'S'
        @position << [@origin[0], (@origin[1] - i)]
      when 'W'
        @position << [(@origin[0] - i), @origin[1]]
      end
    end
  end

end



  # def self.patrol_boat
  #   new 2
  # end
  #
  # def self.destroyer
  #   new 3
  # end
  #
  # def self.submarine
  #   new 3
  # end
  #
  # def self.battleship
  #   new 4
  # end
  #
  # def self.aircraft_carrier
  #   new 5
  # end
