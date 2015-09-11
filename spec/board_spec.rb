require 'board'

describe Board do
  subject { Board.new(10)}
  let(:ship) {double :ship }

  it "place ship should have three arguments" do
    expect(subject).to respond_to(:place_ship)
    subject.place_ship(ship,[1,2],'S')
  end

  it "does not allow ships to be placed out of bounds" do
    expect { subject.place_ship(ship,[10,2], 'S') }.to raise_error
    "Ship cannot be placed out of boundary."
  end

end
