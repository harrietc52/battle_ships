require './lib/ship'

describe Ship do

  it "return status of ship" do
    ship = Ship.new 'A1'
    expect(ship).not_to be_hit
  end

  it "responds to being hit" do
    ship = Ship.new 'A1'
    expect(ship.hit).to eq true
  end

  it "knows its position" do
    ship = Ship.new 'A9'
    expect(ship.position).to match(/^[A-J0-9]*$/)
  end

  # it "knows own size" do
  #   ship = Ship.new(2)
  #   expect(ship.size).to be_between(2,5).inclusive
  # end

end
