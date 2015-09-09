require "./lib/ship"

describe Ship do

  ship = Ship.new

  context "when initialized" do
    it "create a ship with size" do
      expect(subject.size).to eq 1
    end
  end

  it "can be hit" do
    subject.struck
    allow(subject).to receive(:struck).and_return(true)
  end

  it "can't be hit when missed" do
    subject.struck
    allow(subject).to receive(:struck).and_return(false)
  end

  it "hit but still floating" do
    ship.struck
    expect(subject.floating?).to eq true
  end

  it "is sunk" do
    subject.struck
    expect(subject.sunk).to eq true
  end

  it "has been struck" do
    subject.struck
    expect(subject.struck).to eq true
  end

  it "has been missed" do
    subject.missed
    expect(subject.missed).to eq false
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
      expect(ac.size).to eq 5
    end

  end

end
