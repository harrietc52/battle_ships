require 'board'

describe Board do

  subject { Board.new(10)}
  let(:ship1) {double :ship, position: [[0,0], [0,1], [0,2]] }
  let(:ship2) {double :ship, position: [[10,2], [10,1], [10,0]] }
  let(:ship3) {double :ship, position: [[0,0], [1,0], [2,0]] }

  it "place ship should have three arguments" do
    expect(subject).to respond_to(:place_ship).with(1).argument
    subject.place_ship(ship1)
  end

  it "when ship is places, add to ship array" do
    subject.place_ship(ship1)
    expect(subject.ships).to include(ship1)
  end

  it "does not allow ships to be placed out of bounds" do
    expect { subject.place_ship(ship2) }.to raise_error "Ship cannot be placed out of boundary."
  end

   it "does not allow ships to be placed overlapping with other ships" do
    subject.place_ship(ship1)
    expect { subject.place_ship(ship3) }.to raise_error "Ship cannot be placed overlappig with another ship."
  end

  it "responds to being fired at" do
    expect(subject).to respond_to(:fire).with(1).argument
    subject.fire([5,5])
  end

  it "removes ship from ship array when hit" do
    subject.fire([5,5])
    expect(subject.ships).not_to include([5,5])
  end

end
