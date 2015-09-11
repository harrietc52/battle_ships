require 'board'

describe Board do
  let(:ship) {double :ship}

  context "on initialation:" do

    it "has content of water" do
      expect(subject.content).to eq nil
    end

    it "board has count of 100" do
      expect(subject.grid.flatten.count).to eq 100
    end

  end

  it "place ship will change content from water to ship" do
    subject.place_ship(ship,1,2,'South')
    expect(subject.content).to eq ship
  end

  it "place ship should have three arguments" do
    expect(subject).to respond_to(:place_ship)
    subject.place_ship(ship,1,2,'South')
  end

  context "#hits" do

  it "It is initialized with no hits" do
    expect(subject).not_to be_shot
  end

  it "cell can be shot at" do
    expect(subject.content).to receive(:struck)
    subject.shoot!
  end


  it "marked as shot after being shot at" do
    expect(subject.content).to receive(:struck)
    subject.shoot!
    expect(subject).to be_shot
  end
  end
end
