# require './lib/ship'

# describe Ship do

#

#   # it "status when created" do
#   #   ship = Ship.new 'A1'
#   #   expect(ship.hit).to eq false
#   # end

#   it "can be hit" do
#     ship = Ship.new 'A1'
#     expect(ship.hit).to eq true
#   end


#   # it "knows own size" do
#   #   ship = Ship.new(2)
#   #   expect(ship.size).to be_between(2,5).inclusive
#   # end

# end

# # require 'water'

class Ship

attr_reader :size, :start_position
attr_accessor :hits

 def initialize(size, start_position)
   @size = size
   @hits = 0
   # @floating = true
   @sunk = false
   @start_position = start_position
 end

 # def floating?
 #   @floating
 # end


 def recieve_hit
   @hits +=1
 end

 def sunk
   @size == @hits
     true
     # @floating = false
 end

 # def start_position

 # end

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
