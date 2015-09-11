require 'board'

describe Board do

  subject { Board.new(10)}
  let(:ship1) {double :ship, position: [[0,0], [0,1], [0,2]] }
  let(:ship2) {double :ship, position: [[10,2], [10,1], [10,0]] }
  let(:ship3) {double :ship, position: [[0,0], [1,0], [2,0]] }

  it "place ship should have three arguments" do
    expect(subject).to respond_to(:place_ship).with(3).arguments
    subject.place_ship(ship1,[1,2],'S')
  end

  it "does not allow ships to be placed out of bounds" do
    expect { subject.place_ship(ship2,[10,2],'S') }.to raise_error "Ship cannot be placed out of boundary."
  end

  it "does not allow ships to be placed out of bounds" do
    expect { subject.place_ship(ship2,[10,2],'S') }.to raise_error "Ship cannot be placed out of boundary."
  end

   it "does not allow ships to be placed overlapping with other ships" do
    subject.place_ship(ship1,[0,0],'N')
    expect { subject.place_ship(ship3,[0,0],'E') }.to raise_error "Ship cannot be placed overlappig with another ship."
  end

end
