require './lib/ship'

describe Ship do

  it "has a position when created" do
    ship = Ship.new 'A9'
    expect(ship.position).to match(/^[A-J0-9]*$/)
  end

  # it "status when created" do
  #   ship = Ship.new 'A1'
  #   expect(ship.hit).to eq false
  # end

  it "can be hit" do
    ship = Ship.new 'A1'
    expect(ship.hit).to eq true
  end



  # it "knows own size" do
  #   ship = Ship.new(2)
  #   expect(ship.size).to be_between(2,5).inclusive
  # end

end
