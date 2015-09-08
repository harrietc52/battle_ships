require "./lib/ship"


describe Ship do

  describe "when initialized" do

    it "create a ship" do
      ship = Ship.new(1)
      expect(ship.floating?).to eq true
    end

    it "create a ship with size" do
      ship = Ship.new(1)
      expect(ship.floating?).to eq true
    end
  end

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

end
