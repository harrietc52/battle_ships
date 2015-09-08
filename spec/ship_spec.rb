require "./lib/ship"

describe Ship do

  let(:ship){Ship.new(1)}

  context "when initialized" do
    it "create a ship with size" do
      expect(ship.size).to eq 1
    end
  end

  it "can be hit" do
    ship.recieve_hit
    allow(ship).to receive(:recieve_hit).and_return(true)
  end

  it "can't be hit when missed" do
    ship.recieve_hit
    allow(ship).to receive(:recieve_hit).and_return(false)
  end

  it "can be missed" do
    expect(ship.floating?).to eq true
  end

  it "is sunk" do
    ship.recieve_hit
    expect(ship.sunk).to eq true
  end

  describe "can create different ships" do

    it "can create patrol boat" do
      pb = Ship.patrol_boat
      expect(pb.size).to eq 2
    end

    it "can create destroyer" do
      dest = Ship.destroyer
      expect(dest.size).to eq 3
    end

    it "can create submarine" do
      sub = Ship.submarine
      expect(sub.size).to eq 3
    end

    it "can create battleship" do
      bs = Ship.battleship
      expect(bs.size).to eq 4
    end

    it "can create aircraft carrier" do
      ac = Ship.aircraft_carrier
      expect(ac.size).to eq 4
    end

  end
  
end
