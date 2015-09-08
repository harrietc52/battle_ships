require "./lib/ship"

describe Ship do

  it "on initialize create a ship" do
    ship = Ship.new(1)
    expect(ship.floating?).to eq true
  end

  it "on initialize create a ship with size" do
    ship = Ship.new(1)
    expect(ship.floating?).to eq true
  end

  # it "on initialize has a position" do
  #   ship = Ship.new 'A9'
  #   expect(ship.position).to match(/^[A-J0-9]*$/)
  # end

  it "can be hit" do
    ship = Ship.new(1)
    allow(ship).to receive(:recieve_hit).and_return(true)
  end

  it "can't be hit when missed" do
    ship = Ship.new(1)
    allow(ship).to receive(:recieve_hit).and_return(false)
  end

  it "can be missed" do
    ship = Ship.new(1)
    expect(ship.floating?).to eq true
  end

  it "is sunk" do
    ship = Ship.new(1)
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
