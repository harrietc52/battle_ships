require 'cell'

describe Cell do
  let(:ship) {double :ship}
  let(:water){ double :water}
  let(:cell) { Cell.new(water)}

  it "is initialized with water" do
    expect(cell.content).to eq water
  end

  it "not shot when initialized" do
    expect(cell).not_to be_shot
  end

  it "cell can be shot at" do
    expect(cell.content).to receive(:struck)
    cell.shoot!
  end

  it "can add ship when shot" do
    cell.add_ship(ship)
    expect(cell.content).to eq ship
  end

  it "marked as shot after being shot at" do
    expect(cell.content).to receive(:struck)
    cell.shoot!
    expect(cell).to be_shot
  end

  it "is not able to be shot at twice" do
      expect(cell.content).to receive(:struck)
      cell.shoot!
      expect{cell.shoot!}.to raise_error
  end
end
