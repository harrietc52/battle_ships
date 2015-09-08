
# # require 'water'

class Ship

attr_reader :size
attr_accessor :hits

  def initialize(size)
    @size = size
    @hits = 0
    @floating = true
    @sunk = false
  end

  def floating?
    @floating
  end

  def recieve_hit
    @hits +=1
  end

  def sunk
    @size == @hits
    # true
  end

  # def size
  # end



  # def count_hits
  #   @hits += 1
  # end



#   include Hit

#   attr_reader :position

#   def initialize(position)
#     @position = position
#     @hit = false
#   end


end