require "./lib/ship"


describe Ship do

describe "when initialized" do

 it "create a ship" do
   ship = Ship.new(1, 'A1')
   expect(ship.sunk).to eq false
 end

 it "create a ship with size" do
   ship = Ship.new(1, 'A1')
   expect(ship.sunk).to eq false
 end

 it "has a position" do
   ship = Ship.new(1, 'A1')
   expect(ship.start_position).to match(/^[A-J0-9]*$/)
 end

end

 it "can be hit" do
   ship = Ship.new(1, 'A1')
   allow(ship).to receive(:recieve_hit).and_return(true)
 end

 it "can't be hit when missed" do
   ship = Ship.new(1, 'A1')
   allow(ship).to receive(:recieve_hit).and_return(false)
 end

 it "can be missed" do
   ship = Ship.new(1, 'A1')
   expect(ship.sunk).to eq false
 end

 it "is sunk" do
   ship = Ship.new(1, 'A1')
   ship.recieve_hit
   expect(ship.sunk).to eq true
 end


 # it "record number of hits" do
 #   ship = Ship.new
 #   expect { hits +=1 }.to change{hits}.by(1)
 # end




end





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
