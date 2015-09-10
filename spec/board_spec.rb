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

  it "not shot when initialized" do
    expect(subject).not_to be_shot
  end

  it "cell can be shot at" do
    expect(subject.content).to receive(:struck)
    subject.shoot!
  end

  it "can add ship when shot" do
    subject.add_ship(ship)
    expect(subject.content).to eq ship
  end

  it "marked as shot after being shot at" do
    expect(subject.content).to receive(:struck)
    subject.shoot!
    expect(subject).to be_shot
  end

end
